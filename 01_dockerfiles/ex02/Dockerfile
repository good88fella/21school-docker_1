FROM			ruby:2.6.2
RUN				apt-get update; \
				apt-get install -y \
					sqlite3 \
					nodejs; \
				rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*; \
				gem install rails
ONBUILD COPY	app /opt/app
ONBUILD WORKDIR	/opt/app
ONBUILD RUN		bundle install; \
				rake db:schema:load; \
				rake db:seed

# docker build -t ft-rails:on-build .

# git clone https://github.com/good88fella/app.git

# docker build -t ktimika/ex02 -f- .<<EOF
# FROM		ft-rails:on-build
# EXPOSE	3000
# CMD		["rails", "s", "-b", "0.0.0.0", "-p", "3000"]
# EOF

# docker run -it --rm -p 3000:3000 ktimika/ex02
