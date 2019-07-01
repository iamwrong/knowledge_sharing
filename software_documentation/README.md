# How to write good documentation for project


## Motivation

I noticed the Data Engineering tribe at HelloFresh SE was struggling 
with the documented the software produced.  

Most of the documentation available on the internet seems to focus either 
on project management or a specific sub-topic. 


This document was initially written in preparation to a "How to Write (Good)
 Documentation" learning session at HelloFresh. 

## Tip of the day

_I spent 3 hours chasing errors to save 5 minutes reading the README.md_

## Why Should You Care


### Documentation is an extension of your memory

In a few days, weeks, months you will not longer remember, document
learnings and decisions will pay out in the future


### You will need to maintain the code

You will need to maintain the code in the future, therefore you are making
the documentation to help the future you. 

### You want people to use your code

You, and your manager, want other people to use your code (or open source project). 
There is nothing more frustrating than trying to get a snippet of code and have
no idea why it does not work; If people can't get your code to work, they
will not use it.

Good documentation is key for people to understand and use your project.

### Onboarding and User support

Onboarding is much easier when the tools do work and everything is easy to learn. 
Good documentation is key for a positive onboarding experience.

You should regard the time spent on documentation as an investment, your readers
will have a much better user experience,will spend less time asking you
for support, and you will have more time to work on _important things_.
 It is a win-win situation
 
 
### Less duplication

One of the reasons why code that duplicates functionality existing within 
an organization is because others are not aware of it. Awareness of your 
awesome project/code is key to avoid implementation
of similar feature.  

There are lot's of (valid) reasons to have multiple implementations of the same
thing, however ignorance should not be one of them.


### You are looking for a new job

Maybe you are looking for a job, know how to write documentation is skill you
can easily show during a _take home challenge_; therefore you should start 
practice it today

## Agile Methodologies and Documentation

> Working software over comprehensive documentation

The agile manifesto defends a lightweight version of the documentation, not a
zero documentation policy. 

Please defer the creation of documentation to the **latest responsible moment,
 possible**. The key word is **responsible**, if you are doing a task that you
 forget the steps to replicate it, you need to document it right way; This is,
it is very important to document critical information right away.  
 

[Agile Documentation Best Practices] key principles for lightweight documentation:

*  Keep documentation just simple enough, but not too simple
*  Write the fewest documents with least overlap
*  Put the information in the most appropriate place


Documentation as part of the software development process should also be 
included in the estimations and planing. 


[Properties of good documentation]

* Current => __incorrect documentation is worse than missing documentation__
* Nearby => Ideally in the same repository as the code
* Unique => principle of the single source of information. If documentation is 
duplicate extra effort to maintain it needs to be done
* Discoverable => Documentation should be in the place where the users (naturally)
look for it, there is no need to duplicate, you can link the documentation.



 
## Where should I store my documentation

Ideally the documentation directed to other software engineers should be checked in
into the version control system. This gives the benefit of having all the documentation:
* all in the same place
* easy to find
* the documentation is also versioned 
* principle of single source of information


## Different types of Documentation

There are several kinds of documentation, each one addresses a different problem.
* README.md & other markdown files
* API Documentation: javadoc, scaladoc, python docstrings, Swagger
* data types
* naming
* inline comments in the code
* commit log
* unit tests and tests
* command line parameters

Apart from the README.md, the remainder of the documentation is mixed with the
code, and this is key to be always up to date. 

### README.md file


The README.md is the first contact one does with your code repository,
it should answer questions such as:

* is here what i am looking for? In other words, what is the purpose of this
repository and does this code do

* Pre-Requisites (is there any prerequisites that should be )

* Building instructions

* how do i get started (how do i get this running). In other words

* how do i run unit tests in this thing

* whom should I contact if I need help

* contribution guidelines

* other information


Do not assume something is obvious, people really :heart: things that work at 
the first attempt;  In case of doubt include the information


#### Item: _Is this what i am looking for?_

You should describe what is the purpose of the project and what does the code
do. The goal is to help the reader decide if the project is relevant or not.

Good markup titles are: *Motivation*, *Background*, *Overview*, etc.

#### Item: _Pre-Requisites_

In this section you should list all the prerequisites that should be
fulfilled in order to use/run the project.

You can list here things such as: programing language version, framework version,
data stores, ,other software that needs to be installed,
credentials that are to be obtained, etc.


### Item : Building instructions


Instructions on how to build the artifact should be provided. Yes it is needed,
just from memory I can tell you the name of 6 tools that build bytecode (JVM).



#### Item: Getting Started

A step by step guide to get the application to do something. This will allow:

* to verify the environment is setup properly
* the behaviour of the application to be examined
* the user to modify the toy examples, explore and build more complex things.

#### Item: How do i run the tests

If one has to modify the code, she should know how to run the tests to
make sure no unexpected side effect / bug was introduced. 

#### Item: whom should I contact if I need help  

In a corporate environment, hundreds or thousands of people work in tech.
Ideally the team / people maintaining the project should be identifiable.

#### Item: Contribution Guidelines

What are the constraints on code contribution? Does the project follow a
specific coding style? naming conventions? design guidelines, pull request 
checklist. 

A separate markup file can be created for contribution guidelines.  **HelloFresh**
do have a template for contribution guidelines (under software governance)


#### Item: Other things you find useful

There is no such thing as a _one solution fits all_, therefore feel free to
add other information you think useful and do remove items you think don't
fit a specific kind of project. For example, this knowledge sharing project
has no use for unit tests. 

#### Final notes on markup files (and Readme.md)

Be aware that the README.md is a very good tool for onboarding and quick start,
however because it is not code, it can easily get outdated. Your goal should
mitigate this, by using the most appropriate way of documenting.   

### Other markup files

Example of other useful markup files are:

* contribution guidelines
* data exploration / analysis
* how to obtain credentials to use a given service


## The Code as Documentation

The best documentation is not to need documentation, therefore when designing
your abstractions (eg. packages, classes, methods, variables) keep in mind
that the use of meaningful names, that capture the essence of what is happening.

I know it is not easy, and I have a hard time doing it, but spend some time
choosing the right names for your abstractions; it will also help your structure
your code better.  

Please keep in mind that the **code is written once and read many many many times**.
If you are working on a public API or shared library your quality standard should
be ~~double~~ triple the usual.

Avoid naming that collide with well known concepts: eg. java interfaces, concepts
from the real world, software pattern names; For example, if a class has factory
in the name, it is expected to be an implementation of the factory software pattern,
however having factory in the name is not a requirement to implement that
software pattern.

Please do not overuse software patterns, software patterns are supposed to
make the code easy to understand (and by transitivity maintain); they should
not to be used to add unnecessary complexity. There a full list of [Anti Patterns].



## API Documentation: JavaDoc, ScalaDoc Python Docstrings, Swagger, REST

When creating API documentation your focus should be on informing the reader
(API client) on what your code does and how the API is used. Details on how your
Code implements the functionality should be omitted. 


### APIs are final

When designing you API you should be aware, that usually APIs are final
and only can be changed with great effort.

Once the API is published someone will start to use it, and
changes will cause code to break.  For this reason you should be
very careful when:
* naming API packages
* naming API classes
* naming API methods
* naming API enums  

Please use meaningful naming in the public APIs. In the ideal case, the
naming you use is so good that you would not need any extra documentation.  

### API Documentation will be read/consumed though several channels

You should be aware

- The documentation will be read while browse through the code
- The documentation will be read on a fancy-pants _online docs_ build over
your documentation
- The documentation will be shown on the IDE while users are typing the
name of the classes and the methods.

If you think of the latter two cases, it becomes obvious the reader will
look at the documentation when she want to:
* locate some code which has a given functionality
* learn how to use a given function, method or  class

Therefore the API documentation should focus on what it does and not how it
does it. In other words the **details of the implementation should not be in 
the API documentation**; if one want to know how it is implemented, a safari
trip to the source code can always be taken.


           
### Expose the functionality, hide the details of the implementation

After the last point it should clear the **API documentation should expose
the functionality and hide the details of the implementation**. A good example
of this is the [Spark Coalesce Documentation], there is even advice on potential
hazardous situations without ever go into the implementation details.


If there is an easy way to describe the functionality of a package, class, function
you should prefer that way.

However, this is not always possible, in those cases you can:
* Use 1 line to give a brief description
* Line break and use more lines if needed
* describe each one of the parameters (include data type  on untyped languages)
* don't forget the return type.


Checklist:
* get to the point as soon as possible
* if you can do it 1 sentence do it
* summarize the method return value  (you can see it as a more succinct version
of the doc) ;this does apply if you can summarize your method in 1 sentence
* do not make references to the details of the implementation
* if you are referring to an instance of the class use the keyword this
(Scala, Java) or self (Python)


      
##Command Line Documentation

If your application reads argument from the command line (console), 
please use a specialized library (eg. Apache CommonsCli, Python Argparser, etc);

These use of a library as advantage:
* help you parse the input
* provide description for each argument
* provide help for each argument
* it is usable from the command line
* it is checked in the code repository
* it is always up to date 


## Tests

It might not look obvious, but the unit tests are also another way of documenting
your code by providing workable examples.

According to the [TDD philosophy: tests are executable documentation]
tests are executable documentation.

Therefore is very important to *write readable tests*, not only to validate a given feature,
but also to be read and understand by a fellow developer.   

### Tests are always up to date

Unlikely the remainder of the documentation, tests are always up to date;
 the CI will fail the build if they are not.


### Tests as source of examples

Tests had been used for a long time as a source of examples on how to use a
give library. I myself quite often look in the unit tests to learn how to
use a given feature of an obscure library.

### Python Doctest

[Python Doctest] allows to write small unit tests in the Python docstrings. 
This is another evidence that unit tests do help the reader of the program 
understand what a given method does.



##On the code

### Data Types

Data types provide valuable information about what the variables, attributes
and the expected behaviour of an instance of _something_..

Therefore in your Python Docstring include the data type.

On scala the method return data types and the variable data types are optional. As a 
rule of thumb, **if it takes you more than 3 seconds to evaluate the data type of an 
expression, please make it explicit**; someone new to the codebase will have a much 
harder time make sense of it, and very often the code is so obscure that the IDE also
has a hard time evaluate it to give n hint. 



### Meaningful names

The use of meaningful names for your Classes, Objects, Methods, Class Attributes
and variables will allow the reader to better understand your code.

* Choosing the right names for your abstractions will help you structure your code/project


### Inline comments

Inline comments are useful to explain why the _[Black Arts]_ of software
engineering are being practiced.

In other words, the comments are used to explain why a certain "obscure" thing
is being done.  Maybe you read it as advice on StackOverflow (and you add the link
 as comment), or you are link to a google doc with the stakeholder specification,
 or maybe you discovered a certain combination of values throw an exception 
 and you use an in-line comment do document this.

Inline comments should be a rare occurrence, but **once in a while they are
the best way to document something**.

 

## Logging

Logging plays an important part on the maintenance of an application,
hence should also be considered documentation.

### Not everything is worth to log

For example, you are making an HTTP request (with 3 retries), there is not
much value in log every failure; a failure on a HTTP request is a normal thing;
however, a 3 times retry failure is problematic, if the application can’t proceed,
and that is something worth to logging.

Keep in mind, if every validation error and every exception end in the logs, the logs 
lose their (some of) usefulness; Big logs cause a needle in a haystack problem.

### Administrative Logging

[Administrative Logs] are very useful to understand the application, in the case of
Data application it’s useful to log the following _adminsitrative_ information:
* Yarn application id  
* Paths being loaded
* Output directory

This information allows you, without checking the code, see if your data processing job
generated any output, if the input directories are empty or locate your job in
The cluster resource manager. 


###Application Logging 

[A log should be written in English] and shall give context about a failure and allow to identify the root cause; 
hence a good log should answer 5 questions:

- Who (which user, application, cluster node)
- When (timetamp)
- Where (context, class)
- What (command, what was being done)
- Result (Exception)



### Logs to give context to the code

The logging will also give context your code, and help to understand
what is happening. For example :

```

if (status_code == 401){
   Log.Error("HTTP Status code 401: Unauthorized, please check the application" +
    " credentials, could not start the connection with Braze") ;
    throw new IlegalStateException("")
}

```

This log will not give valuable information in the log files, but will also
understand the code and what exactly a 401 is.



## Commit Log

The commit log is also a valuable source of documentation.
 
Good commit messages enhance features such as log, diff, blame. It helps 
understand the changes made, make code review easier and help you structure 
your code better.


##The Ticket System (Jira) is good to track customer requests and project 
management


Git log should be the source of information of why changes were made, not Jira.
> User Story: On table X provide attribute Y

does not look like much of a reason why implementation A is favored over B, does it?

When you perform a _diff_ or a _blame_ over the code you want to understand why
that specific change was done, therefore is critical the information is stored
in the version control. 

Of course, you should put a reference to the ticket system if relevant and gives
context, however the commit log should be enough.

### The commit as a work unit

Things might get easier if you see each commit as a work unit.
Therefore each commit should only have related things.

As guideline can you describe the all the changes happening in a single
commit commit message?
* No => break into describable things
* Yes => Would you be comfortable do a code review on a commit that size?
  * no => break further
  * yes => you are good to go (:


For example:
> Add feature X and Fix code formatting in the same commit

Bad: The formatting cleanup will cause unrelated changes with feature X to the
commit, which will make, for example, the code-review harder.

> Changes based on code review

Bad: this message does not capture the reason why the change were does. You
probably followed several suggestions on your reviews hence, you could
have done one for each suggestion.


You probably already know, but it is possible to go through each commit on
code review; hence good commits will help you make structure better
your pull requests and will also help your reviewer.


### 7 Commandments of good commit messages

* Separate subject from body with a blank line
* Limit the subject line to 50 characters
* Capitalize the subject line
* Do not end the subject line with a period
* Use the imperative mood in the subject line
* Wrap the body at 72 characters
* Use the body to explain what and why vs. how


Learn more on [How to Write a Good Commit Message]




[How to Write a Good Commit Message]: https://chris.beams.io/posts/git-commit/

[TDD philosophy: tests are executable documentation]: https://technologyconversations.com/2014/04/08/tests-as-documentation/

[Write Readable Tests]: https://capgemini.github.io/development/unit-tests-as-documentation/

[Anti Patterns]: https://en.wikibooks.org/wiki/Introduction_to_Software_Engineering/Architecture/Anti-Patterns

[Spark Coalesce Documentation]: https://github.com/apache/spark/blob/master/core/src/main/scala/org/apache/spark/rdd/RDD.scala

[Black Arts]: https://en.wikipedia.org/wiki/Magic_(programming)

[Administrative Logs]: https://github.com/Haufe-Lexware/Logging---Best-Practices

[A log should be written in English]: https://www.scalyr.com/blog/the-10-commandments-of-logging/

[Logging is an Art]: https://www.codeproject.com/Articles/42354/The-Art-of-Logging

[Python Doctest]: https://docs.python.org/2/library/doctest.html

[Agile Documentation Best Practices]: http://www.agilemodeling.com/essays/agileDocumentationBestPractices.htm

[Properties of good documentation]: https://www.writethedocs.org/guide/writing/docs-principles/
