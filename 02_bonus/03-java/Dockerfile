FROM		debian

RUN			apt-get update -q && apt-get install -yq \
				default-jdk \
				git \
				vim \
				nano

WORKDIR		$HOME/java/src/hello
RUN			echo "public class HelloJava {\n\tpublic static void main(String[] args) {\n\tSystem.out.println(\"Hello Java!\");\n\t}\n}" > HelloJava.java \
			&& javac HelloJava.java

ENTRYPOINT	bash
