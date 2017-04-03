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

