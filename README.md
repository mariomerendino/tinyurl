# README

# Installation Instructions

- Clone this project:
  - `git clone https://github.com/mariomerendino/tinyurl`

- Install PostgreSQL 14 from the postgres site or your package manager (like brew or apt-get)
https://www.postgresql.org/download/
  - For convience install a postgres client like Postico (MacOS only), or PgAdmin
  - Ensure that postgres is running.  

- Install a ruby version manager (I personally use rbenv, a good alternative is rvm)
  - Follow installation guide [here](https://github.com/rbenv/rbenv)
  - `brew install rbenv` or `sudo apt install rbenv`
  - Ensure it is installed correctly by running the following `rbenv --version`

- Install the correct ruby version:
  - `cd tinyurl`
  - `rbenv install` 
    - rbenv will automagically find the `.ruby_version` file and use this as the ruby version to install.

- Install dependencies
  - first run `gem install bundler` this ruby dependency manager
  - then run `bundle install` to install all of this projects dependencies
  - then run `rake db:create` & `RAILS_ENV=test rake db:create` to create the local databases
  - lastly run `rake db:migrate` & `RAILS_ENV=test rake db:create` to run the database migrations
    - A migration is a change to the database, like adding/removing a table or column. 
    - Ensure this worked by opening your postgres client and checking that the users table is present.

- Run `rails s` to start the server, and thats it! you're up and running. 
- Run `rails c` to spin up a rails console where you can manually type in ruby commands into the terminal. 
