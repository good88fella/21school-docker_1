FROM 		alpine

RUN 		apk --no-cache add ngircd

ADD			ngircd.conf /etc/ngircd/ngircd.conf
ADD 		ngircd.motd /etc/ngircd/ngircd.motd

EXPOSE 		6667

ENTRYPOINT	[ "/usr/sbin/ngircd"]
CMD			["-n"]
