
all:
	make clean
	make art
	make simple
	make scale
	make view

art:
	pnmscale -xsize 100 ./examples/my.ppm > ./output/temp
	pnmtopng -compression 0 ./output/temp > ./output/art.jpg

simple:
	pbmtoascii ./examples/letter.pbm

scale:
	pnmscale -xsize 100 ./examples/color.ppm > ./output/example.scaled
	ppmtojpeg ./output/example.scaled > ./output/scale.jpg

clean:
	rm -rf ./output
	mkdir -p ./output

view:
	sxiv ./output/art.jpg
	sxiv ./output/scale.jpg

