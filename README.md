# README

Friends App

A simple Ruby on Rails application to manage friends with CRUD functionality. This app allows users to create, read, update, and delete friends.


Features

CRUD Operations: Create, Read, Update, and Delete friends.
Homepage Carousel: Slideshow of images on the homepage.
User Authentication: Secure sign-up, login, and logout using Devise.


System Dependencies

Ruby: 3.1.3
Rails: 7.0.8.4
Node.js: 19.1.0 (for JavaScript runtime)
Yarn: 1.22.19 (for managing JavaScript packages)
Bootstrap: 4.5 (for styling and components)


Configuration
Clone the Repository:

git clone https://github.com/your-username/friends-app.git
cd friends-app


Install Ruby gems:
bundle install

Install JavaScript packages:
yarn install

Database Creation

rails db:create

Run Migrations:
rails db:migrate

Database Initialization
Seed the Database
rails db:seed

Run Tests:
To run the test suite, use:
rails test
or for RSpec:

bundle exec rspec
Services

Job Queues: This app does not use background job processing.
Cache Servers: This app does not use external caching services.

Deployment
It was deployed using heroku.
this is the link:  

Contributing
If you would like to contribute to the project, please fork the repository and submit a pull request with your changes.
