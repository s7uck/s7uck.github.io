require "open-uri"

module Jekyll
	class PhotoPageGenerator < Generator
		def generate(site)
			photo_repo = "s7uck/photos" # aka my repo s7uck/photos
			photo_baseurl = "https://raw.githubusercontent.com/#{photo_repo}/master/"
			output_url = "photos"
			photos = []
			FileUtils.mkdir_p(File.join(site.dest, output_url))

			all_exifdata = File.join(site.dest, output_url, "EXIFDATA.json")
			remote_exif_url = "#{photo_baseurl}EXIFDATA.json"

			begin
				URI.open(remote_exif_url) do |remote|
					File.open(all_exifdata, "wb") do |local|
					local.write(remote.read)
				end
			end
			rescue => e
				Jekyll.logger.warn "PhotoPageGenerator:", "Failed to download EXIFDATA.json (#{e.message})"
			end

			unless File.exist?(all_exifdata)
				Jekyll.logger.warn "PhotoPageGenerator:", "EXIFDATA.json not found, skipping photo pages."
				return
			end

			modes = {
				0 => "AUTO",
				1 => "M",
				2 => "P",
				3 => "A",
				4 => "S",
				5 => "SCNY",
				6 => "ACTN",
				7 => "PORT",
				8 => "PANO",
				"Manual" => "M",
				"Aperture priority AE" => "A",
				"Program AE" => "SCN"
			}

			all_exif = JSON.parse(File.read(all_exifdata))

			all_exif.each do |relative_path, exif|
				container_dir = File.join(output_url, File.dirname(relative_path))

				image_url = "#{photo_baseurl}#{relative_path}"
				image_filename = File.basename(relative_path)
				image_thumbnail_filename = image_filename # FIXME

				title = exif['Title'] || exif['Landmark']
				capture_time = exif['DateTimeOriginal']
				latitude = exif['GPSLatitude']
				longitude = exif['GPSLongitude']
				location = exif['Location'] || "#{latitude.to_s} #{longitude.to_s}".strip
				#FINISH
				camera = "#{exif['Make'].to_s} #{exif['Model'].to_s}".strip
				aperture = exif['Aperture']
				sspeed = exif['ShutterSpeed']
				iso = exif['ISO']
				focal = exif['FocalLength']
				rating = exif['Rating']
				mode = modes[exif['ExposureProgram'] || 'AUTO']
				if exif['OPMedia:IsBokehActive']
					mode = 'MACRO'
				end
				if exif['OPMedia:IsNightModeActive']
					mode = 'NIGHT'
				end
				if exif['OPMedia:IsHDRActive']
					mode += ' HDR'
				end
				description = exif['Comment']

				photo_data = {
					'layout' => 'photo',
					'title' => title,
					'date' => capture_time,
					'location' => location,
					'camera' => camera,
					'image' => image_url,
					'aperture' => aperture,
					'sspeed' => sspeed,
					'iso' => iso,
					'focal' => focal,
					'rating' => rating,
					'mode' => mode,
					'filename' => image_filename,
					'mini' => image_thumbnail_filename,
				}

				photo_data.reject! { |p| p.empty? }

				photo_page = PageWithoutAFile.new(site, site.source, container_dir, "#{image_filename}.md")
				photo_page.data.merge!(photo_data)
				photo_page.content = description

				site.pages << photo_page
			end
		end
	end

	class PageWithoutAFile < Page
		def initialize(site, base, dir, name)
			@site = site
			@base = base
			@dir = dir
			@name = name
			self.process(name)
			self.read_yaml(File.join(base, '_layouts'), 'photo.html')
		end
	end
end
