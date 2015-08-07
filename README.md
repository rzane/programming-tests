# Programming Test

This is a collection of tests to verify basic programming knowledge in a variety of languages.

## Instructions

In the folder representing each language, there will be two files. One file provides unit tests. The other file is awaiting an implementation that will allow all of the tests to pass.

Here's a description of the class you must define:

+ The class will be called `Person`. It's constructor will accept one argument: `name`.
+ An instance of this class will offer a getter for the Person's name.
+ An instance of this class will respond to a `greet` method that accepts one argument: `message`.
+ When the message is `Hello`, `greet` must return `Hi, I'm {{name}}`.
+ When the message is `Goodbye`, `greet` must return `Bye`.
+ When the message is anything else, `greet` will return the message that it was provided.

You can run the tests for each language using rake:

    $ rake <language>

Or, follow these instructions:

#### C#

Open the solution in either Visual Studio or Xamarin Studio. You'll need to use NuGet to install NUnit.

#### Java

To open the project in Eclipse:

1. Open Eclipse and go to File > Import
2. Choose General > Existing Projects into Workspace. Click Next.
3. Click Browse and choose the `java` folder from this project. Click Finish.
4. You now be able to run the project.

Or you can use gradle:

    $ gradle test -b java/build.gradle

#### Javascript

Simply open `javascript/index.html` in your browser.

Or, if you'd prefer to the tests using node:

1. `npm install -g qunit`
2. `qunit -c javascript/person.js -t javascript/person_test.js`
3. Make sure to export Person.

#### Objective C

Open `objective-c/Person.xcodeproj` in Xcode.

#### PHP

Install PHPUnit. Execute `phpunit php/PersonTest.php`

#### Python

Execute `python python/person_test.py`.

#### Ruby

Execute `ruby ruby/person_test.rb`.

#### Swift

Open `swift/Person.xcodeproj` in Xcode.

## Submission

Create a private Github snippet and send me the url.
