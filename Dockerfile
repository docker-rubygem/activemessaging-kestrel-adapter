FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.0.2

RUN gem install activemessaging-kestrel-adapter --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["activemessaging-kestrel-adapter"]
CMD ["--help"]
