# Libs Seido Karate Guide

For my next few gradings in [Seido Karate](http://www.seido.com/) I have to learn a lot.

This is my attempt at learning everything I need to, while making a rails app.

I train at [Seido Karate Wellington](http://seidowellington.co.nz/).


### Heroku
Pushes to production continually deploy to Heroku.

Run migrations:
`heroku run rake db:migrate`

Get into console
`heroku run rails console`

Delete all records e.g
`Stance.destroy_all`

Run seed task:
`heroku run rake db:seed`

This app is using:
`rake db:seed:dump`
To dump all data to seed file


[Getting Started with Rails 4.x on Heroku](https://devcenter.heroku.com/articles/getting-started-with-rails4#migrate-your-database)
[Heroku Command Line](https://devcenter.heroku.com/articles/using-the-cli)





----
This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions
