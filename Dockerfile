FROM ubuntu:14.04

ENV UPDATED_AT 2015-03-23

RUN apt-get update

RUN apt-get install -y \
    curl \
    gcc \
    git \
    libcurl4-openssl-dev \
    make

RUN curl -L http://cpanmin.us | perl - App::cpanminus

RUN cpanm CPAN::Meta::Check
RUN cpanm Moose::Role
RUN cpanm Dist::Zilla
RUN cpanm --notest Dist::Zilla::Plugin::Git::ExcludeUntracked
RUN cpanm Dist::Zilla::PluginBundle::BESSARABV
RUN cpanm Test::Pod::Coverage
RUN cpanm Test::Pod

RUN mkdir /data

WORKDIR /data

CMD dzil release
