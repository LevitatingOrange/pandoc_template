starty=1824
endy=3102

convert \
	titlepage.jpg \
	\( -clone 0 -fill white -colorize 100 -fill black \
	-draw "rectangle 0,$starty 3852,$endy" \
	-alpha off -write mpr:mask +delete \) \
	-mask mpr:mask -blur 0x40 +mask titlepage_blur.jpg        
convert \
	titlepage_blur.jpg \
	-fill "rgba(0,0,0,0.2)" -draw "rectangle 0,$starty 3852,$endy" \
	-page a4 titlepage.pdf 

rm titlepage_blur.jpg
