# Jungle

A mini e-commerce application built with Rails 4.2 while learning Ruby and Rails.

## Learning Goals:

- become familiar with Ruby and the Rails framework ✅
- learn how to navigate an existing code-base ✅
- use existing code style and approach to implement new features in unfamiliar territory ✅
- apply previous learning tactics to research a new language and framework ✅
- simulate real world experience with feature and bug-fix requests are listed (as opposed to being provided with step-by-step instructions) ✅
- testing with RSpec, Poltergeist, and Capybara ✅

## Highlights:

- Sold Out Badge
- Admin Categories
- User Authentication
- Order Details Page
- Bug fix: Added HTTP authentication to fix missing admin security
- Bug fix: Cannot check out with an empty cart

## Additional Steps for Apple M1 Machines

1. Make sure that you are runnning Ruby 2.6.6 (`ruby -v`)
1. Install ImageMagick `brew install imagemagick imagemagick@6 --build-from-source`
1. Remove Gemfile.lock
1. Replace Gemfile with version provided [here](https://gist.githubusercontent.com/FrancisBourgouin/831795ae12c4704687a0c2496d91a727/raw/ce8e2104f725f43e56650d404169c7b11c33a5c5/Gemfile)

## Setup

1. Fork and clone the project
2. Run `bundle install` to install dependencies
3. Create `config/database.yml` by copying `config/database.example.yml`
4. Create `config/secrets.yml` by copying `config/secrets.example.yml`
5. Run `bin/rake db:reset` to create, load and seed db
6. Create .env file based on .env.example
7. Sign up for a Stripe account
8. Put Stripe (test) keys into appropriate .env vars
9. Run `bin/rails s -b 0.0.0.0` to start the server

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

- Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
- PostgreSQL 9.x
- Stripe
