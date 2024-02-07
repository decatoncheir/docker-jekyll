FROM ruby:3.2

COPY Gemfile .

RUN apt-get -y update \ 
        && apt-get install -y \ 
            build-essential \ 
            zlib1g-dev \ 
        && gem install bundle jekyll \
        && rm -rf /var/lib/apt/lists/*

RUN yes | gem update --system \
        && gem install bundle jekyll
