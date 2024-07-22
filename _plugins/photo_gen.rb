require "mini_exiftool"

Jekyll::Hooks.register :site, :post_write do |site|
	photos_dir = "/home/user/Pictures/Gallery" # temp
	output_dir = "photos"

	FileUtils.mkdir_p(output_dir)

	modes = {
		0 => "P",
		1 => "M",
		2 => "P",
		3 => "A",
		4 => "S",
		5 => "SCNY",
		6 => "ACTN",
		7 => "PORT",
		8 => "PANO"
	}

	Dir.glob("#{photos_dir}/*").each do |photo|
		file_extension = File.extname(photo_path)
		photo_name = File.basename(photo, file_extension)
		photo_url = "/#{output_dir}"

		pic = MiniExiftool.new(photo)
		capture_time = pic.date_time_original
		latitude = pic.gps_latitude
		longitude = pic.gps_longitude
		camera = pic.make + ' ' + pic.model
		aperture = pic.aperture
		sspeed = photo.shutter_speed
		iso = pic.iso
		mode = modes[photo.exposure_program.to_i || '?']

		photo_page_content = <<~MARKDOWN
			---
			layout: photo
			name: #{photo_name}
			date: #{capture_time}
			location: #{latitude} #{longitude}
			camera: #{camera}
			image: /#{output_dir}/#{photo}
			aperture: #{aperture}
			sspeed: #{sspeed}
			iso: #{iso}
			mode: #{mode}
		MARKDOWN

		File.write("#{output_dir}/#{photo_name}.md", photo_page_content)
	end
end
