# Playing with design patterns in Ruby

As I read through Design Patterns In Ruby by Russ Olsen, I'll be experimenting with each pattern here to learn what they do and when they might be useful.

## 1: The Template Method pattern
This allows you to vary an algorithm by coding the fixed parts on a base class and the variable parts in subclasses.

## 2: The Strategy method
A delegation-based approach to solving the same problem as the Template Method patter. Instead of separate classes we use a context object, and supply it with different strategy objects as required. Using Ruby code blocks to pass data makes this quick and simple.
