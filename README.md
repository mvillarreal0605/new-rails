# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
  `3.1.2`

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* Simple Form
  `rails generate simple_form:install --bootstrap`

* Using Stimulus JS out of the box with import maps in Rails 7
  Can use the following command to generate new stimulus controllers:
  - `rails generate stimulus navbar`

  For importing npm packages with import maps run:
  - `./bin/importmap pin typed.js`

  Still need to create stimulus controller to customize the js:
  - `rails g stimulus typed_js`

  For specific cases in which you will have to use a different CDN:
  - `./bin/importmap pin chart.js@2.9.4 --from jsdelivr`


