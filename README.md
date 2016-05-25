# Docker image to release Perl libraries with Dist::Zilla::PluginBundle::BESSARABV

## Build image

    ./build

## Use image

    cd My-Perl-Module-Directory
    docker run --rm -it -v `pwd`:/data dzil bash
