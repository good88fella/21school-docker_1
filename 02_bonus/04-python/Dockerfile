FROM		debian

RUN			apt-get update -q && apt-get install -yq \
				python3 \
				git \
				vim \
				nano

WORKDIR		$HOME/python/src/hello
RUN			echo "print(\"Hello python!\")" > hello.py

ENTRYPOINT	bash
