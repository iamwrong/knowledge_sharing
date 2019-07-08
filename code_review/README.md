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
 
* pair programing
* over the shoulder
* patch files sent over email
* with the help of tools
* on a review meeting (with :cake: and :cookie: is always better )
 


[Microsoft Blog Entry]: http://blogs.microsoft.co.il/gilf/2008/08/29/the-benefits-of-code-review/
[Simple Programmer Essay]:https://simpleprogrammer.com/why-code-reviews-make-better-code-teams/
[Atlassian Article] : https://www.atlassian.com/agile/software-development/code-reviews




