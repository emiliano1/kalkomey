## Introduction

This project provides answers for a couple of technical questions.

The Questions are tagged based in their knowledge area. The tags are `css`, `javascript`, `ruby`, `mysql` and `linux`.

Answers are formatted using the markdown syntax.

## Code Explanation

This project contains only one resource: `Question`. As each question can have only one `Answer`, there was no need to create separate resources.

The `Question` model has a `title`, `additional_info`, an `answer` and `tags`.

The `tags` are added using the `acts_as_taggable` gem.

### `acts-as-taggable-on` gem

The `acts-as-taggable-on` gem is used to add the tagging feature to the `Question` model.

```ruby
class Question < ActiveRecord::Base
  ...
  acts_as_taggable
  ...
end
```

### `friendly_id` gem

The `friendly_id` gem is used to create human readable urls for the `Question` resource.

```ruby
class Question < ActiveRecord::Base
  ...
  extend FriendlyId
  friendly_id :title, use: [:slugged, :finders]
  ...
end
```

**Original Question url**

`/questions/1`

**Question url using the friendly_id gem**

`/questions/change-all-of-the-paragraph-tags-on-a-page-to-blue`

### Questions Navigation

The `Question` model provides a basic navigation feature, for allowing the user to navigate through the previous and next questions

```ruby
class Question < ActiveRecord::Base
  ...
  def next
    self.class.where('id > ?', id).first
  end

  def previous
    self.class.where('id < ?', id).last
  end
  ...
end
```

## Setup

Dependencies:
 - git
 - ruby >= 2.0
 - gem bundler
 - mysql

Clone the code using git:
```shell
$ git clone git@github.com:emiliano1/kalkomey.git
```
Install the gems using bundler:
```shell
$ bundle install
```
Change the database username/password:
```ruby
# config/database.yml
default: &default
  adapter: mysql2
  encoding: utf8
  pool: 5
  username: root # change username here
  password: root # change password here
  host: 127.0.0.1
# ...
```
Create and migrate the database:
```shell
$ bundle exec rake db:create
$ bundle exec rake db:migrate
```
Populate the database with questions/answers:
```shell
$ bundle exec rake db:seed
```
Start the server:
```shell
$ bundle exec rails s
```
Now you can access the app at http://localhost:3000/
