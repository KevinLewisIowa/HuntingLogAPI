# README

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

* ...

* git add .
* git commit -m "my message here"
* git push -u origin master
* git push heroku master
* heroku run rails db:migrate    or db:migrate:reset
* 

* rails generate scaffold User username:string email:string age:integer weight:decimal is_active:boolean

*sudo service postgresql start
* rails db:create
* 

*new terminal rails server -b $IP -p $PORT
* new terminal do curl -H "Content-Type:application/json; charset=utf-8" -d '{ "user" : { "username" : "testusername", "email" : "email@gmail.com", "password" : "password", "session_token" : "aslerkjaslelrkser" } }' https://hunting-log-api-kevinlewis2.c9users.io/users
* curl -H "Content-Type:application/json; charset=utf-8" https://hunting-log-api-kevinlewis2.c9users.io/users

*rails generate migration AddSomethingToSomething
*gemfile.rb gem 'bcrypt', '~> 3.1.7'    then run bundle install
* in User class add has_secure_password
* 

* gem 'jwt'
* bundle install
* 

#lib/json_web_token.rb

*class JsonWebToken 
*    class << self 
*        def encode(payload, exp = 24.hours.from_now) 
*            payload[:exp] = exp.to_i 
*            JWT.encode(payload, Rails.application.secrets.secret_key_base) 
*        end 
*        def decode(token) 
*            body = JWT.decode(token, Rails.application.secrets.secret_key_base)[0] 
*            HashWithIndifferentAccess.new body 
*        rescue
*            nil 
*        end 
*    end 
*end
*Read more at https://www.pluralsight.com/guides/ruby-ruby-on-rails/token-based-authentication-with-ruby-on-rails-5-api#jhkKJjstf9vqjymX.99

* add this to application.rb in config class.... config.autoload_paths << Rails.root.join('lib')
* 

* gem 'simple_command'
*  bundle install
*  

 * continue reading here: https://www.pluralsight.com/guides/ruby-ruby-on-rails/token-based-authentication-with-ruby-on-rails-5-api
 * 
 
* POTENTIAL IMAGE STUFF
*  https://stackoverflow.com/questions/47443659/angular-4-rails-5-paperclip-file-upload
*  https://github.com/thoughtbot/paperclip
*  