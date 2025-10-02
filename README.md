CAESAR CIPHER

A basic encryption program modeled after the famous Caesar Cipher algorithm.

When I originally wrote this program, it was a mess of procedurally written spaghetti code.

With Caesar Cipher encryption, letters are encrypted by swapping them with their counterparts
five positions further down the alphabet, with letters near the edge 'wrapping' back to the start
of the alphabet and continuing until five full positions have been iterated

My first draft of this program utilized arrays and conditionals that allowed the encryption to
wrap the alphabet in one direction(forwards)

After a couple of weeks of learning some basic OOP and unit testing principles, I decided to 
re-write the entire program.

DETAILS OF THE OOP VERSION:

    - Each game session is a class object instantiated with a multiple variables, including
      a string collected from the user and passed as an argument during instantiation. This
      string is the message that is to be encrypted.

    - All code was refactored into small command and query methods, with one script method
     (#encrypt) to drives the bulk of the code.

WHAT I LEARNED:

    - TDD forced me to write testable methods. This meant methods were terse, clean(ish)
      and made the whole program modular in a way that made changing pieces of it very simple

    - TDD, although cumbersome as a newly exposed beginner, alleviated all of the anxiety
      I had previously experienced while refactoring code during the build process.

    - Having a more modular codebase(thanks to OOP) makes breaking the conceptual program
      into easily solvable units a breeze.

I look forward to returning to more complex projects with a better handle on TDD and RSpec!
