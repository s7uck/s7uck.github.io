require "mini_exiftool"

module Jekyll
	class PhotoPageGenerator < Generator
		def generate(site)
			photos_dir = "photos" # aka my repo s7uck/photos
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

			Dir.glob("#{photos_dir}/**/*").each do |photo|
				next unless File.file?(photo)

                                puts photo

				file_extension = File.extname(photo)
				filename = File.basename(photo, file_extension)
				photo_path = File.dirname(photo).sub(photos_dir, '')
				photo_url = "#{output_url}#{photo_path}"

				begin
					pic = MiniExiftool.new(photo)
					pic.numerical = true
					title = pic.title || pic['Landmark']
					capture_time = pic.date_time_original
					latitude = pic.gps_latitude
					longitude = pic.gps_longitude
					location = pic['Location'] || latitude + ' ' + longitude
					camera = pic.make + ' ' + pic.model
					aperture = pic.aperture
					sspeed = pic.shutter_speed
					iso = pic.iso
					focal = pic.focallength
					rating = pic.rating
					mode = modes[pic.exposure_program || 'AUTO']
					description = pic.comment

					photo_data = {
						'layout' => 'photo',
						'title' => title,
						'date' => capture_time,
						'location' => location,
						'camera' => camera,
						'image' => File.join(photo_url, filename + file_extension),
						'aperture' => aperture,
						'sspeed' => sspeed,
						'iso' => iso,
						'focal' => focal,
						'rating' => rating,
						'mode' => mode
					}

					photo_data.reject! { |p| p.empty? }

					dest = File.join(site.dest, photo_url)
					FileUtils.mkdir_p dest

					photo_page = PageWithoutAFile.new(site, site.source, photo_url, "#{filename}.md")
					photo_page.content = description
					photo_page.data.merge!(photo_data)

					site.pages << photo_page
					FileUtils.cp(File.expand_path(photo), dest)
				rescue
					puts "#{photo} didn't work"
				end				
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
