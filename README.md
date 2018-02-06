# Readme

This Project is hosted by [Heroku](https://frozen-tundra-59098.herokuapp.com/api/v1/pages)

This API provide a simple html page parse content.

Postgresql is used as main database.

Redis is used to store queue for background jobs and as cache to store ActiveModelSerializers fragments.

Sidekiq is used to run background jobs.

## Dependencies

* rvm
* ruby 2.5
* postgresql (9.4 or greater)
* redis (4 or greater) (queue and cache)

## Tests

Unit tests were written using Rspec.

In addition to Rspec, other tools were used to measure the quality of the code:
- brakeman (Scan the application to find vulnerabilities)
- fasterer (Performance improvement tips)
- rubocop (Review the code and suggest improvements based on the Ruby/Rails Community Style Guide)
- rubycritic (Analyze code complexity)
- simplecov (Analyzes the percentage of test coverage of the code)

Run rake to run every test suite
```bundle exec rake```

## Continuous Integration

This repository is configured to run the Continuous Integration scripts for each interaction.

The build status can be followed by the following buttons

[![Build Status](https://travis-ci.org/matheusvetor/furry-memory.svg?branch=master)](https://travis-ci.org/matheusvetor/furry-memory) [![Coverage Status](https://coveralls.io/repos/github/matheusvetor/furry-memory/badge.svg?branch=master)](https://coveralls.io/github/matheusvetor/furry-memory?branch=master)

## Run App

```git clone https://github.com/matheusvetor/furry-memory.git```

```cd furry-memory```

```rvm install ruby-2.5.0```

```bundle install```

Sidekiq needs to be running for in conjunction with the application to perform background processing

```bundle exec sidekiq```

Run the server

```rails s```

## Api

### Pages

#### **GET** - /api/v1/pages

```sh
curl -X GET "https://frozen-tundra-59098.herokuapp.com/api/v1/pages?per_page=1&page=2"
```

#### **POST** - /api/v1/pages

```sh
curl -X POST "https://frozen-tundra-59098.herokuapp.com/api/v1/pages?url=https://github.com/matheusvetor"
```
