FROM	ubuntu:16.04

RUN		apt-get update -q && apt-get install -yq \
			wget \
			ca-certificates \
			default-jre-headless \
			screen

RUN		mkdir -p /srv/minecraft

RUN		addgroup --system minecraft \
		&& adduser --system --no-create-home --home /srv/minecraft --ingroup minecraft minecraft

WORKDIR	/srv/minecraft

RUN		wget https://launcher.mojang.com/v1/objects/4d1826eebac84847c71a77f9349cc22afd0cf0a1/server.jar

RUN		echo "eula=true" > eula.txt

EXPOSE	25565

CMD		java -Xmx1024M -Xms1024M -jar server.jar nogui
