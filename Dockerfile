# Base image: Ruby with necessary dependencies for Jekyll
FROM docker.io/ruby:3.2

# Install dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    nodejs \
    npm \
    && rm -rf /var/lib/apt/lists/*

# Set the working directory
WORKDIR /usr/src/app

# Copy dependency files
COPY Gemfile Gemfile.lock package.json package-lock.json ./

# Install bundler and Ruby dependencies
RUN gem install bundler:2.3.26 && bundle install

# Install NPM dependencies (including uglify-js)
RUN npm install
