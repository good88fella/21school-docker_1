FROM		debian

RUN			apt-get update -q && apt-get install -yq \
				wget \
				bzip2 \
				git \
				vim \
				nano

RUN			wget https://dl.google.com/go/go1.13.6.linux-amd64.tar.gz \
			&& tar -C /usr/local -xzf go1.13.6.linux-amd64.tar.gz \
			&& rm -rf go1.13.6.linux-amd64.tar.gz

ENV			PATH=$PATH:/usr/local/go/bin

RUN			mkdir -p $HOME/go/src/hello
WORKDIR		$HOME/go/src/hello
RUN			echo "package main\n\nimport \"fmt\"\n\nfunc main() {\n\tfmt.Printf(\"hello, golang\\\n\")\n}" > hello.go \
			&& go build

ENTRYPOINT	bash
