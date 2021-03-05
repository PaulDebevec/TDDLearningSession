## TDDLearningSession - A learning session on Test Driven Development

## Table of Contents

* [About](#about)
  * [Tech Stack](#tech-stack)
  * [Schema](#schema)
* [Getting Started](#getting-started)
  * [Installation](#installation)
  * [Testing](#testing)
* [Version Information](#version-information)
  * [Branch v1](#branch-v1)
  * [Branch v2](#branch-v2)
  * [Branch v3](#branch-v3)

## About

I created this repository with multiple branches for an easy-to-setup learning session on test driven development.

### Tech Stack

***Stack*** | ***Testing framework***
------------ | -------------
Ruby: 2.6.6| RSpec
Rails: 6.0.3 | Capybara
PostgreSQL: 12.2 | Simplecov
... | Shoulda-matchers
... | Pry (For debugging)


## Getting Started

To get a local copy up and running follow the proceeding steps.

### Installation

1a. Clone the repo using SSH (If you choose this option skip to step 2)
```sh
git clone git@github.com:PaulDebevec/TDDLearningSession.git
```
OR

1b. Clone the repo using HTTPS
```sh
git clone https://github.com/PaulDebevec/TDDLearningSession.git
```
2. Install the Gem File
```ruby
bundle install
```
3. Create your environment
```ruby
rails db:{create,migrate,seed}
```

### Testing

Run the test suite from the root directory of the repository

```ruby
bundle exec rspec
```

## Version Information

## Branch v1
```sh
Branch v1 contains the first set of tests for displaying the blog index page
```

## Branch v2
```sh
Branch v2 contains the functionality tested in v1, as well as new tests to implement blog_posts, and the one to many relationship between blogs and blog_posts
```

## Branch v3
```sh
Branch v3 contains the functionality of v1 and v2 with all passing tests.
```
