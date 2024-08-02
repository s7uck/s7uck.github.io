require "mini_exiftool"

module Jekyll
	class PhotoPageGenerator < Generator
		def generate(site)
			photos_dir = "/home/lubuntu/Immagini/Gallery" # temp
			output_url = "/photos"
			photos = []
			FileUtils.mkdir_p(File.join(site.dest, output_url))

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

			Dir.glob("#{photos_dir}/*").each do |photo|
				file_extension = File.extname(photo)
				photo_name = File.basename(photo, file_extension)
				photo_url = "#{output_url}/#{photo_name}#{file_extension}"

				pic = MiniExiftool.new(photo)
				pic.numerical = true
				capture_time = pic.date_time_original
				latitude = pic.gps_latitude
				longitude = pic.gps_longitude
				camera = pic.make + ' ' + pic.model
				aperture = pic.aperture
				sspeed = pic.shutter_speed
				iso = pic.iso
				focal = pic.focallength
				rating = pic.rating
				mode = modes[pic.exposure_program || 'AUTO']

				photo_data = {
					'layout' => 'photo',
					'title' => photo_name,
					'date' => capture_time,
					'location' => "#{latitude} #{longitude}",
					'camera' => camera,
					'image' => "#{photo_name}#{file_extension}",
					'aperture' => aperture,
					'sspeed' => sspeed,
					'iso' => iso,
					'focal' => focal,
					'rating' => rating,
					'mode' => mode
				}

				photo_page = PageWithoutAFile.new(site, site.source, output_url, "#{photo_name}.md")
				photo_page.content = ""
				photo_page.data.merge!(photo_data)

				site.pages << photo_page
				FileUtils.cp(photo, File.join(site.dest, photo_url))
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
