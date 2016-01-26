FROM		ruby:2.3.0-slim
MAINTAINER	Marcelo Pinheiro <salizzar@gmail.com>

RUN		apt-get update		&&	\
		apt-get install -y		\
		make				\
		gcc				\
		patch				\
		libpq-dev			\
		libcrypto++-dev			\
		libssl-dev			\
		libxml2-dev		&&	\
		apt-get clean

WORKDIR		/opt/zadni
RUN		mkdir -p /opt/zadni
COPY		src/zadni/Gemfile src/zadni/Gemfile.lock /opt/zadni/

RUN		ruby -S bundle install

