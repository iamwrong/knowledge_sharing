#How to do code review


##Motivation

The data tribe at HelloFresh enjoyed so much my previous session on how to do 
do good documentation that asked me to setup a session on code review. 



## Topics Covered

* The benefits of code review

* different methods of code review

* checklists

* code review courtesy

* how to make a good pull request

* tools (used by other hello fresh teams) that integrate with GitHub

* automated code reviews



## Benefits of The Code Review


The benefits of code review are enumerated on several sources, for example
 on this [Microsoft Blog Entry], this [Simple Programmer Essay] or this 
 [Atlassian Article].

I will summarize some of them:

* Mentoring tool and learning framework
    * On junior engineers as a tool to help them learn at a much faster rate
    * On experienced engineers as a way to learn how to do things in a 
     different way (and you guys know how hard is to re-educate a seasoned 
     professional)
    * When allowed do code review people also learn from people with better
     skill (not everybody visits open source to educate herself) 
     
* Double Check on Requirements and Acceptance Criteria 
    * A fellow engineer can sometimes (lets hope most of the times) can spot
     requirement missing or acceptance criteria items missing.         
     
* Improve Quality
    * Bugs and problems can be spotted in a earlier stage; therefore action 
     can be taken earlier. It is also much easier to spot potential bugs during 
     code review than during the testing phase. The more experienced engineers
     also look for edge cases and the big picture implications.
    * The resulting code is cleaner, and the long run, one of the factors of 
      success is it's maintainability
    * Less code duplication, the feature being implemented might be available 
    somewhere else. 
    * Custom implementations might exist as part of standard libraries
    
* Improved Code Readability
     * Either by following the suggestions given during the code review
     * Or by peer-pressure (developers are more careful before checking-i)  
     * Enforce code standards and conventions; by enforcing conventions 
     the code becomes more readable across the entire team
     
* Knowledge Sharing 
    * Allowing engineers to get familiar with other parts of the system
    * Engineers get familiar with the Architecture
    * Get familiar with certain familiar with certain functionality that 
    might be needed in the future
    * Removes the single point of failure, because the knowledge is spread
     across the team. 
    * Better planning estimations: engineers that are familiar with the system 
     can provide better estimations during the sprint planing.
     
     
## Different methods of Code Review  

Code review can be done in a more light-weight or formal setup. It can be 
 done throw:
 
* [Pair Programming] (not considered code-review but worth mention)
* over the shoulder
* patch files sent over email
* with the help of tools
* on a review meeting (with :cake: and :cookie: is always better )

### Pair Programing

Pair programming shares some of the benefits of code-review, however it should
 not be seen as a replacement of code-review. 
 
[Pair Programing Additional Benefits] :
 * At least two programmers need to agree with the code at the same time
 * Any ping-pong is solved right away
 * Flaws are spotted even earlier (not at the end of a long code-review)
 * It's very effective as a tool of knowledge transfer
 * some engineers love it
 
 However there are some disadvantages:
 * the "reviewer" is too close to the code
 * some engineers hate it
 * its very time consuming

 
 
### Over The Shoulder Code Review

Over the shoulder is the most lightweight method of code review. The author,
author guides the reviewer though the code. 
It has the advantage that the author can request the drive the reviewer into 
 a specific section, collect feedback and work on the defects/suggestions 
 before committing any code.
 
The disadvantage is that the pace and direction of the review is controlled
 by the author and requires both persons to be together at same time. And the
 author might just ignore the comments of the reviewer and not incorporate 
 them in the feedback.
 
 
### Email Patches Code Review

On the email code-review patch files are generated and passed around in e-mail 
 conversation. The biggest advantage, is that other people can easily be brought
 in into the discussion. 

As a disadvantage the review can_can quickly become an unreadable mass of comments,
 replies, and code snippets, especially when others are invited to talk and 
 with several discussions in different parts of the code_. 
 
 Therefore is:
 * verify all the defects are really fixed
 * hard to know when the review is complete


### Assisted with Tools

Moderns tools such as github help to keep track of review comments and improve
the collaboration between team members. 

In additions there are tools that can perform _static code analysis_, and
perform tasks such as:
 
* check style
* coding conventions (eg. import order, tabs or spaces, naming conventions, line size)
* code smell
* duplicate code
* type safety
* test coverage

And finally there are integration and plugins for IDE that can perform 
checks while you code.


The use of automation, is leave as much work as possible outside the scope
 of the human code review (:

 
### Checklists

In order to be consistent and productive in code reviews, a checklist of items
to be used should be used. 

This I like to check:
* quality of the documentation
* poorly chosen names (variables, classes)
* flaws in the logic
* does the code do what is expected to do? 
* redundant/duplicate code 
* timezones during the timestamps conversion
* can code be replaced with library/framework functions?
* is the code modular? can it be made more modular?
* are global variables really necessary? can an functional approach be used? 
* am i able to easily understand the code in front of me? 
* can i easily unit test / debug this code? 
* does this code follow the defined architecture? 



https://web.archive.org/web/20160305004143/http://blog.fogcreek.com/increase-defect-detection-with-our-code-review-checklist-example/

https://www.evoketechnologies.com/blog/code-review-checklist-perform-effective-code-reviews/


### Convert Problems into issues





### Code review Etiquette





   
 


[Microsoft Blog Entry]: http://blogs.microsoft.co.il/gilf/2008/08/29/the-benefits-of-code-review/
[Simple Programmer Essay]:https://simpleprogrammer.com/why-code-reviews-make-better-code-teams/
[Atlassian Article] : https://www.atlassian.com/agile/software-development/code-reviews
[Pair Programming]: http://www.extremeprogramming.org/rules/pair.html
[Pair Programing Additional Benefits]: https://blog.codinghorror.com/pair-programming-vs-code-reviews/
[Practical Code Review]: http://www.methodsandtools.com/archive/archive.php?id=66





