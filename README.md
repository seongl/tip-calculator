# Pre-work - *tip-calculator*

**tip-calculator** is a tip calculator application for iOS.

Submitted by: **Seong Lee**

Time spent: **6** hours spent in total

## User Stories

The following **required** functionality is complete:

* [X] User can enter a bill amount, choose a tip percentage, and see the tip and total values.
* [X] Settings page to change the default tip percentage.

The following **optional** features are implemented:
* [ ] UI animations
* [X] Remembering the bill amount across app restarts (if <10mins)
* [ ] Using locale-specific currency and currency thousands separators.
* [X] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.

The following **additional** features are implemented:

- [X] Add a splash screen at the start
- [X] Change the icon of the app

## Video Walkthrough 

Here's a walkthrough of implemented user stories:

<img src='http://i.imgur.com/K8KoDK8.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Project Analysis

As part of your pre-work submission, please reflect on the app and answer the following questions below:

**Question 1**: "What are your reactions to the iOS app development platform so far? How would you describe outlets and actions to another developer? Bonus: any idea how they are being implemented under the hood? (It might give you some ideas if you right-click on the Storyboard and click Open As->Source Code")

**Answer:** [Enter your answer here in a paragraph or two].

1) iOS app develepment platform made mobile app development real easy and convenient. Design is just a simple drag and drop. It looks like there isn't much distinction between designer and developer. Also the syntax of language is real simple. e.g. no semicolon needed
2) I say outlets are more like a pipeline that lets input and output come in and out from progam to a design. Actions are basically event handlers configured to take some action based on the events that happens.

Question 2: "Swift uses [Automatic Reference Counting](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/AutomaticReferenceCounting.html#//apple_ref/doc/uid/TP40014097-CH20-ID49) (ARC), which is not a garbage collector, to manage memory. Can you explain how you can get a strong reference cycle for closures? (There's a section explaining this concept in the link, how would you summarize as simply as possible?)"

**Answer:** [Enter your answer here in a paragraph or two].
Since closure is a self-contained blocks of functionality that can be passsed around,  it acts like a strong reference cycle of multiple instances. The important point is closure itself is a reference and since that reference is passed around and used in the other class, the link between the two cannot be destroyed and can be a potential memory leak.


## License

    Copyright [yyyy] [name of copyright owner]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
