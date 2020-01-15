FROM		ubuntu:14.04

RUN			apt-get update -q \
    		&& apt-get install -yq --no-install-recommends \
      			ca-certificates \
      			openssh-server \
      			wget \
      			apt-transport-https

RUN			echo "deb https://packages.gitlab.com/gitlab/gitlab-ce/ubuntu/ `lsb_release -cs` main" > /etc/apt/sources.list.d/gitlab_gitlab-ce.list
RUN			wget -q -O - https://packages.gitlab.com/gpg.key | apt-key add -
RUN			apt-get update && apt-get install -yq --no-install-recommends gitlab-ce

EXPOSE		443 80 22

RUN			echo "#!/bin/bash\n/opt/gitlab/embedded/bin/runsvdir-start &\ngitlab-ctl reconfigure && tail -f /dev/null" > /usr/local/bin/wrapper

RUN			chmod +x /usr/local/bin/wrapper

ENTRYPOINT	["/usr/local/bin/wrapper"]

# docker build -t ktimika/ex03 .
# docker run -it -p 8080:80 -p 8443:443 -p 8022:22 --privileged --name gitlab ktimika/ex03
