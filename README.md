# pdfalto-builder
Docker setup for building and usingpdfalto (quick and dirty)
https://github.com/kermitt2/pdfalto


## Building

	git clone https://github.com/artturimatias/pdfalto-builder.git

	cd pdfalto-builder

	./fetch-sources.sh

	make build

If everything went well, you should have pdfalto binary inside pdfalto directory in the container.

## Usage

You can now create a directory called "input" where you place your PDF files, and directory called "output" which will hold xml files produced by pdfalto.
Then just call pdfalto like this: 

	docker run --rm -v $(PWD)/input:/home/pdfalto/input -v $(PWD)/output/:/home/pdfalto/output artturimatias/pdfalto-builder ./pdfalto ./input/MYPDF.pdf ./output/MYPDF.xml

You can omit the last argument (./output/MYPDF.xml). In that case xml files are created in the "input" directory among with original pdf files. 


