IMAGE_NAME=ngircd

build:
	docker build -t ${USER}/${IMAGE_NAME} .

run:
	docker run -it -p 6667:6667 --name ngircd_serv ${USER}/${IMAGE_NAME}
