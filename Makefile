
all:
	make my
	make simple
	make scale

my:
	mkdir -p ./output
	pnmscale -xsize 100 ./examples/my.ppm > ./output/abc
	pnmtopng -compression 0 ./output/abc > ./output/xyz
	sxiv ./output/xyz
	rm ./output/abc ./output/xyz

simple:
	pbmtoascii ./examples/letter.pbm

scale:
	pnmscale -xsize 100 ./examples/color.ppm > ./output/example.scaled
	ppmtojpeg ./output/example.scaled > ./output/abc.jpg
	sxiv ./output/abc.jpg
	rm -f ./output/example.scaled
	rm -f ./output/abc.jpg

