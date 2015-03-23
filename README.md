# Docker image to release Perl libraries with Dist::Zilla::PluginBundle::BESSARABV

## Build image

    docker build --tag dzil .

## Use image

    docker run -it -v /Users/bessarabov/Dropbox/git/App-IsGitSynced:/data dzil
