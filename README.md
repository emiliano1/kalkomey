Kalkomey Pre-Interview Test

Purpose/Delivery:

The purpose of this test is to show your knowledge of Ruby on Rails and 
supporting technologies. You will be building a Ruby on Rails application 
to help you deliver your answers. 

Once the questions are answered, please zip the directory containing the 
application and email (kclark@kalkomey.com) it back to me. Alternatively, you 
can push the application to a PRIVATE git repo and add me (github:texasviking) 
to the repo.

Expectations:

- Work should be done using git best-practices. 
- The application should be built using Rails 4 or greater.
- Database backend should be MySQL.
- UI work should be completed using Bootstrap 3 or greater.
- Include notes in the README on how to setup and run the application.

Setup:

- When running the application, I want to see three things on the root page: 
  - Describe the purpose of the application.
  - A link to view questions/answers.
  - A link to an "About Me" page.
- When navigating to the questions/answers link I want to see the following:
  - A list of the provided questions
  - If I click on a questions, take me to a detail page showing both question
    and answer. These should also be formatted using syntax highlighting.
    Note: I don't actually need the answer portion to execute the code. Just
          show me the correct code, nicely formatted and syntax highlighted.
- When navigating to the "About Me" page:
  - No set outline here. At least provide basic contact info, but showing off 
    is better!

Questions:

1. # Using CSS
   
   Question:
   Change all of the paragraph tags on a page to blue.


2. # Using Javascript

   Question:
   Iterate over the following hash (of people) and output all of their first 
   names.

   Additional Info:
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


3. # Using Javascript/jQuery
   
   Question:
   Using ajax, update the students div with the response from the json 
   endpoint.

   Additional Info:
   Endpoint: http://example.com/api/v1/students.json
   Div ID: "students"

4. # Using Ruby

   Question:
   Write a class/method(s) to perform the following functions to 2 numbers: 
   add, subtract, multiple, and divide.


5. # Using Ruby

   Question:
   Write a class/method that performs basic validation on an input string.

   Additional Info:
   Validations must include at least the following:
   - At least 8 characters
   - At least 1 capital letter
   - At least 1 number


6. # Using Ruby

   Question:
   Write a class/method that parses the input and returns a Person object with 
   the appropriate fields set (first_name, middle_name, last_name, title).

   Additional Info:
   Given the following inputs:
   - Mr. Robert William Barker
   - Mr. Barker
   - Bob Barker
   - Barker


7. # Using MySQL

   Question:
   Given the following table, write a query that returns the number of 
   students registered by day:

   Additional Info:
   students:
   - id (int)
   - name (string)
   - registered_at (datetime)


8. # Using MySQL

   Question:
   Given the above students table, and the following, related, payments table,
   write a query that returns each student created in the month of February.
   Return the student's name, and whether they've paid or not.

   Additional Info:
   payments:
   - id (int)
   - student_id (int, fk)
   - amount (decimal)
   - created_at (datetime)


9. # Linux commands

   Question:
   You're deploying a Rails application to a server, but the application
   isn't running correctly. Describe what steps you would take to debug the
   issue, and include the various shell commands needed to execute these
   steps.


10. # No code response

   Question:
   You have an API that you've written that throws 500s occasionally. What 
   steps would you take as an engineer to diagnose the issue? Assume that 
   the first 3 hypotheses are incorrect when diagnosing. 
