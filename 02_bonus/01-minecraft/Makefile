IMAGE_NAME=minecraft

build:
	docker build -t ${USER}/${IMAGE_NAME} .

run:
	docker run -it -p 25565:25565 --name minecraft_serv ${USER}/${IMAGE_NAME}
