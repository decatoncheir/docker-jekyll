FROM ruby:3.1

RUN apt-get -y update \ 
        && apt-get install -y \ 
            build-essential \ 
            zlib1g-dev \ 
        && rm -rf /var/lib/apt/lists/*

RUN yes | gem update --system \
        && gem install bundle jekyll
