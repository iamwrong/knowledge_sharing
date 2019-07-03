# How To Write Good Documentation For Project


## Motivation

I noticed the Data Engineering tribe at HelloFresh SE was struggling 
 documenting the produced software. 

Most of the documentation available on the internet seems to focus either 
on project management or a specific sub-topic. 


This document was initially written in preparation to a "How to Write (Good)
 Documentation" learning session at HelloFresh. 


## Why Should You Care


### Documentation Is An Extension Of Your Memory

In a few days, weeks, months you will not longer remember, document 
learnings and decisions will pay out in the future


### You Will Need To Maintain The Code

You will need to maintain the code in the future; therefore you are making 
the documentation to help the future you. 

### You Want People To Use Your Code

You, and your manager, want other people to use your code (or open source 
 project). There is nothing more frustrating than trying to get a snippet 
 of code and have no idea why it does not work; If people can't get your 
 code to work, they will not use it. 

Good documentation is key for people to understand and use your project.

### Onboarding And User Support

Onboarding is much easier when the tools do work and everything is easy to learn. 
Good documentation is key for a positive onboarding experience. 

You should regard the time spent on documentation as an investment, your 
 readers will have a much better user experience, will spend less time asking 
 you for support, and you will have more time to work on _important things_. 
 It is a win-win situation
 
 
### Less Duplication

One of the reasons why code that duplicates functionality existing within 
an organization is because others are not aware of it. Awareness of your 
awesome project/code is key to avoid implementation
of similar feature.  

There are lot of (valid) reasons to have multiple implementations of the same
thing; however ignorance should not be one of them.


### You Are Looking For A New Job

Maybe you are looking for a job, know how to write documentation is skill you
can easily show during a _take home challenge_; therefore you should start 
practice it today.

## Agile Methodologies And Documentation

> Working software over comprehensive documentation

The agile manifesto defends a lightweight version of the documentation, not a
zero documentation policy. 

Please defer the creation of documentation to the **latest responsible moment,
 possible**. The key word is **responsible**, if you are doing a task that you
 forget the steps to replicate it, you need to document it right way; This is,
it is very important to document critical information right away.  
 

According to the [Agile Documentation Best Practices], the  key principles for 
 lightweight documentation:

*  Keep documentation just simple enough, but not too simple
*  Write the fewest documents with least overlap
*  Put the information in the most appropriate place


Documentation as part of the software development process should also be 
included in the estimations and planning. 


[Properties of good documentation]

* Current => __incorrect documentation is worse than missing documentation__
* Nearby => Ideally in the same repository as the code
* Unique => principle of the single source of information. If documentation is 
duplicate extra effort to maintain it needs to be done
* Discoverable => Documentation should be in the place where the users (naturally)
look for it, there is no need to duplicate, you can link the documentation.



 
## Use The Version Control For Your Documentation

Ideally the documentation directed to other software engineers should be checked in
into the version control system. This gives the benefit of having all the documentation:
* All in the same place
* Easy to find
* The documentation is also versioned 
* Principle of single source of information


## Different Types Of Documentation

There are several kinds of documentation, each one addresses a different problem.
* README.md & other markdown files
* API Documentation: javadoc, scaladoc, python docstrings, Swagger
* Naming
* Inline comments in the code
* Commit log
* Unit tests and tests
* Command line parameters

Apart from the README.md, the remainder of the documentation is mixed with the
code, and this is key to be always up to date. 

### README.md File


The README.md is the first contact one does with your code repository,
it should answer questions such as:

* Is this what I am looking for? In other words, what is the purpose of this
repository and does this code do

* Pre-Requisites (are there any prerequisites I should comply with to 
run this code? Do I need to install any software?)

* Building instructions

* How do I get started (how do i get this running).

* How do I run the unit tests in this thing 

* Whom should I contact if I need help

* Contribution guidelines

* Other information


Do not assume something is obvious, people really :heart: things that work at 
the first attempt;  In case of doubt include the information. You don't know
if a developer from other team (eg. backend) is assigned to add a field to 
 _your_ data pipeline. 


#### Item: _Is This What I Am Looking For?_

You should describe what is the purpose of the project, and what does the code
do. The goal is to help the reader decide if the project is relevant or not.

Good markup titles are: *Motivation*, *Background*, *Overview*, etc.

#### Item: _Pre-Requisites_

In this section you should list all the prerequisites that should be
fulfilled in order to use/run the project.

You can list here things such as: programming language version, framework 
 version, data stores, other software that needs to be installed,
 credentials that are to be obtained, etc.


### Item : Building Instructions


Instructions on how to build the artifact should be provided. Yes it is needed,
just from memory I can tell you the name of 6 tools that build bytecode (JVM).



#### Item: Getting Started

A step-by-step guide to get the application to do something. This will allow:

* To verify the environment is setup properly
* The behaviour of the application to be examined
* The user to modify the toy examples, explore and build more complex things.

#### Item: How Do I Run The Tests

If one has to modify the code, she should know how to run the tests to
make sure no unexpected side-effect / bug was introduced. 

#### Item: Whom Should I Contact If I Need Help  

In a corporate environment, hundreds or thousands of people work in tech.
Ideally the team / people maintaining the project should be identifiable.

#### Item: Contribution Guidelines

What are the constraints on code contribution? Does the project follow a
specific coding style? naming conventions? design guidelines, pull request 
checklist. 

A separate markup file can be created for contribution guidelines.  **HelloFresh**
do have a template for contribution guidelines (under software governance)


#### Item: Other Things You Find Useful

There is no such thing as a _one solution fits all_, therefore feel free to
add other information you think useful and do remove items you think don't
fit a specific kind of project. For example, this knowledge sharing project
has no use for unit tests. 

#### Final Notes On Markup Files (And Readme.md)

Be aware that the README.md is a very good tool for onboarding and quick start,
however because it is not code, it can easily get outdated. Your goal should
mitigate this, by using the most appropriate way of documenting.   

:warning: beware wrong instructions are worst than no instructions at all

#### Readme.md Examples: 
Good Readme.md files are for example: [aws encryption sdk], [aws sdk java], 
 [Apache Spark] or [Closure Compiler (Google)]; There is plenty of good 
  examples on github.

### Other Markup Files

Example of other useful markup files are:

* contribution guidelines
* data exploration / analysis
* how to obtain credentials to use a given service


## The Code As Documentation

The best documentation is not to need documentation, therefore when designing
your abstractions (eg. packages, classes, methods, variables) keep in mind
that the use of meaningful names, that capture the essence of what is happening.

I know it is not easy, and I have a hard time doing it, but spend some time
choosing the right names for your abstractions; it will also help your structure
your code better.  

Please keep in mind that the **code is written once and read many many many times**.
If you are working on a public API or shared library your quality standard should
be ~~double~~ triple the usual.

Avoid naming that collide with well-known concepts: eg. java interfaces, concepts
from the real world, software pattern names; For example, if a class has factory
in the name, it is expected to be an implementation of the factory software pattern;
however the naming is not a requirement to implement any software patern.

Please do not overuse software patterns, software patterns are supposed to
make the code easy to understand (and by transitivity maintain); they should
not be used to add unnecessary complexity. There is a full list of [Anti Patterns].



## API Documentation: JavaDoc, ScalaDoc Python Docstrings, Swagger, REST

When creating API documentation your focus should be on informing the reader
(API client) on what your code does and how the API is used. Details on how your
Code implements the functionality should be omitted. 


### APIs Are Final

When designing you API you should be aware, that usually APIs are final
and only can be changed with great effort.

Once the API is published someone will start to use it, and
changes will cause code to break; hence you should be
very careful when:
* Naming API packages
* Naming API classes
* Naming API methods
* Naming API enums  

Please use meaningful naming in the public APIs. In the ideal case, the
naming you use is so good that you would not need any extra documentation.  

### API Documentation Will Be Read/Consumed Though Several Channels

You should be aware

- The documentation will be read while browse through the code
- The documentation will be read on a web fancy-pants _online docs_ build from the source code
- The documentation will be shown on the IDE while users are typing the
name of the classes and the methods.

If you think of the latter two cases, it becomes obvious the reader will
look at the documentation when she want to:
* Locate some code which has a given functionality
* Learn how to use a given function, method or  class

Therefore the API documentation should focus on what it does and not how it
does it. In other words the **details of the implementation should not be in 
the API documentation**; if one want to know how it is implemented, a safari
trip to the source code can always be taken.


:star2: dedicated pages such as javadoc, scaladoc, pythondoc, readthedocs
are a good example on how the _single source of information_ (the code)
is converted into a different way of delivering the documentation. This
_fancy pants_ html pages are generated from the source code of the application,
they will always be in sync with the source code.

           
### Expose The Functionality, Hide The Details Of The Implementation

After the last point it should clear the **API documentation should expose
the functionality and hide the details of the implementation**. A good example
of this is the [Spark Coalesce Documentation], it gives advice on potential
hazardous situations without ever going into the implementation details.


If there is an easy way to describe the functionality of a package, class, function
you should prefer that way.

However, this is not always possible, in those cases you can:
* Use 1 line to give a brief description
* Line break and use more lines if needed
* Describe each one of the parameters (include data type  on untyped languages)
* Don't forget the return type.


Checklist:
* Get to the point as soon as possible
* If you can do it 1 sentence do it
* Summarize the method return value  (you can see it as a more succinct version
of the doc) ;this does apply if you can summarize your method in 1 sentence
* Do not make references to the details of the implementation
* If you are referring to an instance of the class use the keyword _this_
(Scala, Java) or _self_ (Python)


      
## Command Line Documentation

If your application reads argument from the command line (console), 
please use a specialized library (eg. Apache CommonsCli, Python Argparser, etc);

It brings several advantage:
* Help you parse the input
* Provide description for each argument
* Provide help for each argument
* It is usable from the command line
* It is checked in the code repository
* It documentation is always up-to-date 

:star2: Another great example of the single source of information. The help
given by the command line will always be up to date with the source code.

## Tests

It might not look obvious, but the unit tests are also another way of documenting
your code by providing workable examples.

Additionally, according to the [TDD philosophy: tests are executable documentation].

Therefore, it is very important to *write readable tests*, not only to validate a given feature,
but also to be read and understand by a fellow developer.   

### Tests Are Always Up-To-Date

Unlikely the remainder of the documentation, tests are always up-to-date;
 the CI will fail the build if they are not.


### Tests As Source Of Examples

Tests had been used for a long time as a source of examples on how to use a
give library. I myself, quite often look in the unit tests to learn how to
use a given feature of an obscure library.

### Python Doctest

[Python Doctest] allows to write small unit tests in the Python docstrings. 
This is another evidence that unit tests do help the reader of the program 
understand what a given method does.



## On The Code

### Data Types

Data types provide valuable information about what the variables, attributes
and the expected behaviour of an instance of _something_..

Therefore in your Python Docstring include the data type.

On scala the method return data types and the variable data types are optional. As a 
rule of thumb, **if it takes you more than 3 seconds to evaluate the data type of an 
expression, please make it explicit**. Someone new to the codebase will have a much 
harder time make sense of it;administrative and very often the code is so obscure that the IDE also
has a hard time evaluate it to give n hint. 



### Meaningful Names

The use of meaningful names for your Classes, Objects, Methods, Class Attributes
and variables will allow the reader to better understand your code.

* Choosing the right names for your abstractions will help you structure your code/project


### Inline Comments

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

### Not Everything Is Worth To Log

For example, you are making an HTTP request (with 3 retries), there is not
much value in log every failure; a failure on a HTTP request is a normal thing;
however, a 3 times retry failure is problematic, if the application can’t proceed,
and that is something worth to logging.

Keep in mind, if every validation error and every exception end in the logs, the logs 
lose their (some of) usefulness; Big logs cause a needle in a haystack problem.

### Administrative Logging

[Administrative Logs] are very useful to understand the application, in the case of
Data application it’s useful to log the following _administrative_ information:
* Yarn application id  
* Paths being loaded
* Output directory

This information allows you, without checking the code, see if your data processing job
generated any output, if the input directories are empty or locate your job in
the cluster resource manager. 


### Application Logging 

[A log should be written in English] and should give context about a failure 
and allow to identify the root cause; hence a good log should answer 5 questions:

- Who (which user, application, cluster node)
- When (timestamp)
- Where (context, class)
- What (command, what was being done)
- Result (Exception)



### Logs To Give Context To The Code

The logging will also give context your code, and help you understand
what is happening. For example :

```

if (status_code == 401){
   Log.Error("HTTP Status code 401: Unauthorized, please check the application" +
    " credentials, could not start the connection with Braze") ;
    throw new IlegalStateException("")
}

```

This log will not only give valuable information in the log files, but will also point to the problem at hand.



## Commit Log

The commit log is also a valuable source of documentation.
 
Good commit messages enhance features such as log, diff, blame. It helps 
understand the changes made, make code review easier and help you structure 
your code better.


## The Ticket System (Jira) Is Good To Track Customer Requests And Project 
Management


Git log should be the source of information of why changes were made, not Jira.
> User Story: On table X provide attribute Y

does not look like much of a reason why implementation A is favored over B, does it?

When you perform a _diff_ or a _blame_ over the code, you want to understand why
that specific change was done; therefore is critical the information is stored
in the version control. 

Of course, you should put a reference to the ticket system if it is relevant and gives
context, however the commit log should be enough.

### The Commit As A Work Unit

Things might get easier if you see each commit as a work unit;
therefore each commit should only have related things.

As guideline can you describe all the changes happening in a single
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

Bad: this message does not capture the reason why the change were done. You
probably followed several suggestions on your reviews; hence you probably could
have isolated each change in a separate commit.


You probably already know, but it is possible to go through each commit on
code review; hence good commits will help you make structure better
your pull requests and will also help your reviewer.


### 7 Commandments Of Good Commit Messages

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




[aws encryption sdk]: https://github.com/aws/aws-encryption-sdk-python
[aws sdk java]: https://github.com/aws/aws-sdk-java
[Apache Spark]: https://github.com/apache/spark
[Closure Compiler (Google)]: https://github.com/google/closure-compiler

[Linux Kernel]: https://github.com/torvalds/linux/commits/master 


