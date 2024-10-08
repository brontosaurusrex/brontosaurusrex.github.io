---
layout: page
title: ruby
published: true
---


## Table of contents
{:.no_toc}

* TOC
{:toc}

## Ruby books

[https://whatpixel.com/best-ruby-books/](https://whatpixel.com/best-ruby-books/)  
[https://poignant.guide](https://poignant.guide)

## Loops

Say woot

```ruby
5.times { print "woot " } 
#woot woot woot woot woot => 5
```

Unnamed parameter passed from iterator to the 'chute', where it gets a name n.

```ruby
1.upto(6) { |n| print n } 
#123456=> 1
```

Similar, with spaces, n gets converted to string

```ruby
1.upto(6) { |n| print n.to_s + " " } 
#1 2 3 4 5 6 => 1
```

Similar with do-end, puts is similar to print, but will add new-line

```ruby
1.upto(6) do |n| 
    puts n
end
```

## Integer to float

```ruby
x = 10
y = 3
puts x.to_f / y.to_f
#3.333333333333333
```

## String

```ruby
x="Test"
y="String"
# if after the fact?
puts "Shiny!" if x + y == "TestString" 
#Shiny!
```

### Multiline

Quotation marks replaced with %q and any wisely choosen delimeter

```ruby
x = %q( woot
woot
woot)

puts x

#woot
#woot
#woot
```

## Interpolation

Expressions (and logic) directly in strings. Interpolation refers to the process of inserting the result of an expression into a string literal.

```ruby
x = 10 ; y = 20
puts "#{x} + #{y} = #{x + y}"
10 + 20 = 30
```

## Regex

For digits

```ruby
string = "Dog cost $100 and cat is $10"                
string.scan(/\d+/) do |x| ; puts x ; end               
#100
#10
# \d = any digit and + = match one or many
```    
    
For set of vowels    
   
```ruby
"spamer".scan(/[aeiou]/) { |vowel| puts vowel }        
#a
#e
```

Match should return array of hits

```ruby
puts "string with vowels" if "This is a test".match(/[aeiou]/)
string with vowels
```

## Arrays

### Populate and empty an array

```ruby
x = []
x << "Woot"
x << "is"
x << "this?"
puts x.pop
puts x.pop
puts x.pop
```

### Iterate over array
    
```ruby
[ "a", "b", "c"].each { |element| puts element }
#a
#b
#c
```

or the same with do..end
```ruby
[ "a", "b", "c"].each do |e| 
    puts e
end
#a
#b
#c
```


### Convert on the fly

```ruby
[ 1,2,3,4 ].collect { |e| e*2 }
#[2, 4, 6, 8]
```

## Hashes 

This are key->value type of arrays (also known as lists or dictionaries)

> A Hash is a dictionary-like collection of unique keys and their values. Also called associative arrays, they are similar to Arrays, but where an Array uses integers as its index, a Hash allows you to use any object type.

One is two and two is three:

```ruby
 h = { 1 => 2, 2 => 3 }
 h.each { |k, v| puts "#{k} = #{v}" }
#1 = 2
#2 = 3
```    
    
^ Not sure why interpolation is needed here.

```ruby
p h.keys
#[1, 2]
```

^ What keys are in hash? (also h.values)

Btw: h.methods should show all methods for the object.

```ruby
h.methods
#=> [:index, :<=, :replace, :==, :clear, :>=, :[], :to_h, :[]=, :include?, :empty?, :eql?, :fetch, :shift, :select!, :keep_if, :values_at, :inspect, :delete_if, :reject!, :assoc, :rassoc, :compact, :compact!, :flatten, :length, :size, :each, :<, :>, :default, :rehash, :store, :default=, :default_proc, :default_proc=, :to_hash, :to_proc, :each_key, :to_a, :to_s, :each_pair, ...
```

To determine the type of an object (in ruby that seems to eq to class)

```ruby
h.class
#=> Hash

42.class
#Integer

42.1.class
#Float

42.methods
#=> [:-@, :**, :<=>, :upto, :<<, :<=, :>=, :==, :chr, :===, :>>, :[], :%, :&, :inspect, :+, :ord, :-, :/, :*, :size, :succ, :<, :>, :to_int, :coerce, :divmod, :to_s, :to_i, :fdiv, :modulo, :remainder, :abs, :magnitude, :integer?, :numerator, :denominator, :floor, :ceil, :round, ...

42.even?
#=> true

-42.abs
#=> 42

42.1111.floor 
#=> 42
```

### Hashes Within Hashes

> It’s possible to have hashes (or, indeed, any sort of object) within hashes, and even arrays within hashes, within hashes! Because everything is an object and hashes and arrays can contain any other objects, there exists the ability to create giant tree structures with hashes and arrays.

## if and unless

```ruby
age = 100
puts "No!" if age < 100
#=> nil
puts "No!" if age < 101
#No!
```

Unless is the opposite of if

```ruby
puts "Yes!" unless age < 100
#Yes!
puts "Yes!" unless age < 101
#=> nil
```

Multiline

```ruby
he = "the one"
if he == "the one"
    puts "wow"
end
#wow
```

## Ternary operator

> Ternary (from Latin ternarius) is an adjective meaning "composed of three items".

A short version of if/else

```ruby
age = 50
result = age < 50 ? "young" : "old"
puts result
#old
```

Structure is 

    <condition> ? <result if true> : <result if false>
    
## While and Until

```ruby
x = 0
while x < 12
    print x.to_s + " "
    x += 1
end
#0 1 2 3 4 5 6 7 8 9 10 11
```

## Code blocks (closures)

> What if we could pass a chunck of code into a method, like it was an argument? We could put the looping code at the top and bottom of the method, and then in the middle, we could run the code that was passed in!

> A **block** is a chunk of code that you associate with a method call. 

```ruby
def my_method(&my_block) # takes block as a parameter, notice ampersand thing
    puts "We are in the method, soon to invoke block"
    my_block.call # calling block
    puts "We are back in the method"
end

# A block
my_method do
    puts "We are in the block"
end
```

Ampersand in method definition will make ruby expect a block and convert it to an object and store it in that parameter. Block is a chunck of code that you pass into a method. The call method invokes the block's code.

### Method can send multiple parameters to block.

```ruby
# method
def give(&my_block)
    my_block.call("string one", "string two")
end

# block
give do |parameter1, parameter2|
    puts "My method gave me"
    puts parameter1, parameter2
end
#My method gave me
#string one
#string two
```

### yield

> 1. produce or provide (a natural, agricultural, or industrial product). 
> 2. give way to arguments, demands, or pressure.

Yield is easier way to accept blocks. 

> The **yield** keyword will find and invoke block a method was called with with no need to declare a parameter.

```ruby
def woot
    yield
    yield # can also pass parameters: yield "string one", "string two"
end
```

is the same as

```ruby
def woot(&my_block)
    my_block.call
    my_block.call
end
```

Block can also return values.

### Safely closing the file with the block

```ruby
lines = [] # making lines var working outside the scope of a block
File.open("review.txt") do |review|
    lines = review.readlines 
    # ^ local block var, can't be seen outside, 
    # unless lines is defined before the block
end # closes the file

puts.lines.length
```

## Date and time

```ruby
puts Time.now
puts Time.now + 60 # seconds
```

## Ranges

```ruby
('A'..'Z').to_a.each { |l| print l }
#ABCDEFGHIJKLMNOPQRSTUVWXYZ
 (1..42).each { |l| print l.to_s + " " }
#1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 
```

## Symbols

[http://rubylearning.com/satishtalim/ruby_symbols.html](http://rubylearning.com/satishtalim/ruby_symbols.html)

> A symbol looks like a variable name but it's prefixed with a colon. Examples - :action, :line_items. You don't have to pre-declare a symbol and they are guaranteed to be unique. There's no need to assign some kind of value to a symbol - Ruby takes care of that for you. Ruby also guarantees that no matter where it appears in your program, a particular symbol will have the same value.

## Variables

Local

```ruby
def function
    x = 50
    puts x
end

x = 10
function
puts x
#50
#10
```

$Global

```ruby
def function
    puts $x
end

$x = 10
function
# 10
```

@Object

@@Class

## Real software I wrote

[Divisors](https://raw.githubusercontent.com/brontosaurusrex/ruby/master/bin/divisors) = first blood, find all divisors for natural numbers

    ./divisors 2 3 4 1111 1117
    (2) [1, 2] prime
    (3) [1, 3] prime
    (4) [1, 2, 4]
    (1111) [1, 11, 101, 1111]
    (1117) [1, 1117] prime

Lets prove a 10 digit prime in 44 seconds

    time ./divisors 1073807359
    (1073807359) [1, 1073807359] prime
    ./divisors 1073807359  44.38s user 0.00s system 99% cpu 44.382 total

p.s. Same thing took 29:27,09 total (1/2 hour) on pi3.

## Never version of Ruby on Debian using Rbenv

Latest stable is 2.7.1 at the time of this writing

[https://linuxize.com/post/how-to-install-ruby-on-debian-10/](https://linuxize.com/post/how-to-install-ruby-on-debian-10/)

Mostly like this

    cd
    curl -sL https://github.com/rbenv/rbenv-installer/raw/master/bin/rbenv-installer | bash -
    echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.zshrc
    echo 'eval "$(rbenv init -)"' >> ~/.zshrc
    source ~/.zshrc
    rbenv -v
    rbenv install -l
    rbenv install 2.7.1
    rbenv global 2.7.1
    ruby -v

[2.7.1](https://rubyreferences.github.io/rubychanges/2.7.html) seems worthy (as opposed to version 2.5.5 in Buster), if nothing else irb will get automagic line padding, also experimental stuff like [pattern matching](https://speakerdeck.com/k_tsj/pattern-matching-new-feature-in-ruby-2-dot-7).

If the rbenv install fails, try

    sudo apt install autoconf bison build-essential libssl-dev libyaml-dev libreadline-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm6 libgdm-dev

NOTAFIX: In case of WSL all kind of connection trouble may occur due to the thing trying to use ipv6, to disable that globally [read this](https://askubuntu.com/questions/958876/how-to-disable-ipv6-on-windows-subsystem-for-linux/1013248#1013248).


