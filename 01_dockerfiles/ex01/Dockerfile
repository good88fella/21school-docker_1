FROM		debian
RUN			apt-get update; \
			apt-get install -y --no-install-recommends \
				wget \
				bzip2 \
				ca-certificates; \
			rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN			wget https://files.teamspeak-services.com/releases/server/3.10.2/teamspeak3-server_linux_amd64-3.10.2.tar.bz2; \
			tar -xvf teamspeak3-server_linux_amd64-3.10.2.tar.bz2; \
			rm teamspeak3-server_linux_amd64-3.10.2.tar.bz2
WORKDIR		teamspeak3-server_linux_amd64
ENV			TS3SERVER_LICENSE=accept
EXPOSE		9987/udp 10011 30033
RUN			["/bin/bash", "ts3server_startscript.sh", "start"]
ENTRYPOINT	["./ts3server"]

# docker build -t ktimika/ex01 .
# docker run -p 9987:9987/udp -p 10011:10011 -p 30033:30033 ktimika/ex01
