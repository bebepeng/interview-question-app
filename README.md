[![Code Climate](https://codeclimate.com/github/bebepeng/interview-question-app.png)](https://codeclimate.com/github/bebepeng/interview-question-app)

# Interview App

## Background

An app to help job applicants to practice their phone interviewing responses.

## Important Links

* [Tracker](https://www.pivotaltracker.com/n/projects/1111920)
* [Staging](http://phone-interview.herokuapp.com/)

## Setup

Please follow the steps below to get this site set up for local development.

1. Fork & clone the repo
1. `bundle` to install gems
1. `rake db:create db:migrate db:seed` to set up your local database
1. `RAILS_ENV=test rake db:migrate` to set up your test database
1. `rspec` to run specs
1. `rails s` to run your localserver:3000