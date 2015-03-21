#!/usr/bin/env fish

set dirs 'mdpi' 'hdpi' 'xhdpi' 'xxhdpi' 'xxxhdpi'
set factor 1 1.5 2 3 4
set images 'ic_launcher' 'marker'

for image in $images
	for i in (seq (count $dirs))
		set size (math "$factor[$i] * 48")
		set p "../src/main/res/drawable-$dirs[$i]/$image.png"
		inkscape -e $p -C -h $size -w $size $image.svg
	end
end
