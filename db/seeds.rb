question_attrs = [
    {
        title: 'Change all of the paragraph tags on a page to blue.',
        answer: %q{
```css
  p {background-color: blue;}
```
},
        tag_list: 'css',
    },
    {
        title: 'Iterate over the following hash (of people) and output all of their first names.',
        additional_info: %q{
var people = [
  {
    first_name: "Tony",
    last_name: "Stark"
  },
  {
    first_name: "Michael",
    last_name: "Jordan"
  },
  {
    first_name: "William",
    last_name: "Henry"
  },
  {
    first_name: "George",
    last_name: "Washington"
  }
];
},
        answer: %q{
```javascript
people.forEach(function(person) {
  console.log(person.first_name);
});
```
        },
        tag_list: 'javascript',
    },
    {
        title: 'Using ajax, update the students div with the response from the json endpoint.',
        additional_info: %q{
Endpoint: http://example.com/api/v1/students.json
Div ID: "students"
},
        answer: %q{
```javascript
  $('#students').load('http://example.com/api/v1/students.json');
```
},
        tag_list: 'javascript, jquery',
    },
    {
        title: 'Write a class/method(s) to perform the following functions to 2 numbers: add, subtract, multiple, and divide.',
        answer: %q{
```ruby
class Operator
  def initialize(x, y)
    @x = x
    @y = y
  end

  def add
    @x + @y
  end

  def subtract
    @x - @y
  end

  def multiple
    @x * @y
  end

  def divide
    raise ZeroDivisionError, "You cannot divide by zero" if @y.zero?

    @x.to_f / @y
  end
end
```
},
        tag_list: 'ruby',
    },
    {
        title: 'Write a class/method that performs basic validation on an input string.',
        additional_info: %q{
Validations must include at least the following:
   - At least 8 characters
   - At least 1 capital letter
   - At least 1 number
},
        answer: %q{
```ruby
class Validator
  def initialize(str)
    @str = str
  end

  def valid?
    valid_length? && valid_content?
  end

  protected

  def valid_length?
    @str.size >= 8
  end

  def valid_content?
    !(@str =~ /[A-Z]/).nil? && !(@str =~ /\d/).nil?
  end
end
```
},
        tag_list: 'ruby',
    },
    {
        title: 'Write a class/method that parses the input and returns a Person object with the appropriate fields set (first_name, middle_name, last_name, title).',
        additional_info: %q{
Given the following inputs:
   - Mr. Robert William Barker
   - Mr. Barker
   - Bob Barker
   - Barker
},
        answer: %q{
```ruby
class Person
  def initialize(input)
    @first_name = nil
    @middle_name = nil
    @last_name = nil
    @title = nil

    parse!(input)
  end

  protected

  def parse!(input)
    @title = /(.+\.)/.match(input)[0] rescue nil

    input.gsub!(/(.+\.)\ /, '')
    input = input.split(' ')

    @last_name = input.pop
    @first_name = input.shift
    @middle_name = input.first
  end
end
```
},
        tag_list: 'ruby',
    },
    {
        title: 'Given the following table, write a query that returns the number of students registered by day:',
        additional_info: %q{
students:
   - id (int)
   - name (string)
   - registered_at (datetime)
},
        answer: %q{
```sql
  SELECT COUNT(id), registered_at FROM students GROUP BY DAY(registered_at)
```
},
        tag_list: 'mysql',
    },
    {
        title: 'Given the above students table, and the following, related, payments table, write a query that returns each student created in the month of February. Return the student\'s name, and whether they\'ve paid or not.',
        additional_info: %q{
payments:
   - id (int)
   - student_id (int, fk)
   - amount (decimal)
   - created_at (datetime)
},
        answer: %q{
```sql
SELECT name, (SELECT CASE WHEN SUM(amount) > 0 THEN 'Yes' ELSE 'No' END) AS paid FROM students LEFT JOIN payments ON payments.student_id = students.id WHERE MONTH(registered_at) = 2 GROUP BY name
```
},
        tag_list: 'mysql',
    },
    {
        title: 'You\'re deploying a Rails application to a server, but the application isn\'t running correctly. Describe what steps you would take to debug the issue, and include the various shell commands needed to execute these steps.',
        answer: %q{
First I would check the logs to see if I could find any useful information:
```shell
$ cat logs/production.log | grep ERROR
$ tail -n200 logs/production.log
```
If I dont find anything in the logs, then I check if the disk is full:
```shell
$ df -h
```
I check if the system has enough RAM:
```shell
$ free -h
$ htop
```
I check the services that the app depends:
```shell
$ service apache2 status
$ service mysqld status
$ redis-cli --stat
```
I may need to restart some of them:
```shell
$ sudo service apache2 restart
```
If I dont find anything, I try to re-deploy or restart the app:
```shell
$ cap deploy production
$ cap deploy restart
```
If nothing works, then I rollback the last release and try to find the problem in a safe environment:
```shell
$ cap deploy:rollback
```
},
        tag_list: 'linux',
    },
    {
        title: 'You have an API that you\'ve written that throws 500s occasionally. What steps would you take as an engineer to diagnose the issue? Assume that the first 3 hypotheses are incorrect when diagnosing.',
        answer: %q{
First I look for the error message in the error reporting system (AirBrake, Rollbar ...).
If the app doesn't use these services or if they didnt track the error, then I try to find it directly in the log files.
If I dont find any info, then I try to reproduce the error locally.
If I still dont find anything, I review the app specs to see if I can add new specs that can identify this error.
If everything fails, then I setup the app in a new environment and redirect the traffic to there, until I can fix the problem.
},
    },
]

question_attrs.each do |attrs|
  Question.create!(attrs)
end
