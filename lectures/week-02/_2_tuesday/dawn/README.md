# Intro Node 
| Objectives |
| :---- |
| Students should have node and npm installed on their computers |
| Students should be able to use the node REPL |
| Students should be able to use node to run javascript files in the terminal |
| Students should be able to use npm to install node packages |
| Students should be able to require installed packages in a javascript file |

## Install Node
Since we all have homebrew installed on our computers, we can use the `brew` command to install node. To do so, run the following commands into your terminal from any directory:

```bash
$ brew update
```
```bash
$ brew install node
```
And then to check that things have installed properly try running the following command:

```bash
$ npm
```
If you get a response you're good.

## Playing with the Node REPL
Let's get started by opening up a node REPL. We can do this by running the `node` command in our terminal. 

```bash
$ node
>
```
**Note:** to exit type `Control-c` twice.

### A brief overview of the history of Javascript

This gives us a javascript REPL, that is exactly like the one that we have in our browser. This is something interesting. Pre 2008, this idea wouldn't have been taken seriously. At the time essentially no one took javascript seriously. It was a language that you used in the browser, when you had to. It was slow and had a lot of quirks.

In 2008-2009, two big things happened. First, Douglas Crockford release a book called [Javascript the Good Parts](http://www.amazon.com/JavaScript-Good-Parts-Douglas-Crockford/dp/0596517742). And second, Google released the [V8 Engine](http://en.wikipedia.org/wiki/V8_%28JavaScript_engine%29) for the Chrome Browser which transformed javascript into something fast. This caught the eye of Ryan Dhal, the creator of Node, who took the V8 Engine and ported it to it's own runtime platform called 'Node.js'.

This allowed, developers, for the first time, to use javascript outside of the browser. For the first time developers could using a single programming language for both client and server.

## Using node to run a javascript file

In addition to giving us a javascript REPL, we can use the node command to run a javascript file. To see this in action, first create a file and open it in sublime by typing the following commands into your terminal:
```bash
$ touch hello.js
$ subl hello.js
```
Then in sublime add the following content:

```js
var hello = function() {
  return "Hello, World";
};

hello();
```
Now if we go back to our terminal and run
```bash
$ node hello.js
```
What should we see?
If you guess nothing, you're correct. Why don't we see anything?
The reason we don't see anything is because we haven't told our program to print out anything. So to fix this we should probably do that.

```js
var hello = function() {
  return "Hello, World";
};

console.log(hello());
```
Now if we go back to our terminal and run
```bash
$ node hello.js
```
We see that "Hello, World" is printed out as we would expect.


## Installing packages using NPM
As you may have noticed earlier, when we installed node, we also installed another command called `npm`.

NPM is the [Node Package Manager](https://www.npmjs.com/), which as you may have guessed, helps us manage our node packages. Now you may be asking what is a node package? In short, it's javascript code that is bundled together so that it can be used by others, much like jQuery.

### Install the chalk.js package
To get a better Idea of what a node package is lets play around with installing one called [chalk](https://www.npmjs.com/package/chalk).

First lets create a new directory to work in by running the following commands in terminal:

```bash
$ mkdir play
$ cd play
```

Then we'll want to install the chalk package by running

```bash
$ npm install chalk
```
To check to see that it installed properly, we can run the list command in our terminal to see that a 'node_modules' directory has been installed.

Now that we've got chalk installed, the question you should all be asking is 'How do I use it?'. 

The answer is `require`. Node provides us a function called `require` that bundles up all of the functionality that `chalk`, or any other node package, has to offer and gives us access to it.

To see what I'm talking about lets open up a new file to work in

```bash
$ ls
```
Now lets add a new file and open it in sublime:

```bash
$ touch play.js
$ subl play.js
```
In sublime add the following content to the play.js file

```js
var chalk = require('chalk');

console.log(chalk.red('Hello World'));
```
To run the file type `node play.js` in your terminal.

We can add more things like the following

```js
var chalk = require('chalk');

console.log(chalk.red('Hello World'));
console.log(chalk.bold.blue('My name is Michael'));

var rainbow = chalk.red('r') + chalk.yellow('a') + chalk.green('i')
                + chalk.cyan('n') + chalk.blue('b') + chalk.magenta('o')
                + chalk.white('w');
console.log(rainbow);
```

See the [documentation](https://www.npmjs.com/package/chalk) for chalk to see what else you can do.


