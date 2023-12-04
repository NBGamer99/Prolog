# Prolog Programming Language

## What is Prolog?

Prolog, or **PRO**gramming in **LOG**ic, is a high-level computer programming language first devised for artificial intelligence applications.

- It is a logic programming language, meaning that it is based on formal logic.
- Unlike many other programming languages, Prolog is intended primarily as a declarative programming language.
- In Prolog, logic is expressed as relations, represented as facts and rules.
- The core heart of Prolog lies at the logic being applied.

## How to Install Prolog

### On Windows

1. Visit the SWI-Prolog downloads page.
2. Download the appropriate version for your system (32-bit or 64-bit).
3. Run the downloaded executable file and follow the installation instructions.

### On Ubuntu

You can install SWI-Prolog stable on Ubuntu by running the following three commands in your terminal:

```bash
sudo apt-add-repository ppa:swi-prolog/stable
sudo apt update
sudo apt install swi-prolog
```

## Simple Examples

### Facts and Queries

```pl
% Here are some simple clauses.
likes(mary,food).
likes(mary,wine).
likes(john,wine).
likes(john,mary).

% The following queries yield the specified answers.
?- likes(mary,food). % yes
?- likes(john,wine). % yes
?- likes(john,food). % no
```

### Family Tree

```
% Slightly more complicated family tree.
male(james1).
male(charles1).
male(charles2).
male(james2).
male(george1).

female(catherine).
female(elizabeth).
female(sophia).

parent(charles1, james1).
parent(elizabeth, james1).
parent(charles2, charles1).
parent(catherine, charles1).
parent(james2, charles1).
parent(sophia, elizabeth).
parent(george1, sophia).

% Here is how you would formulate the following queries:
?- parent(charles1, george1). % Was George I the parent of Charles I?
?- parent(charles1,X). % Who was Charles I's parent?
?- parent(X,charles1). % Who were the children of Charles I?

```

### Recursion: Tower of Hanoi

```pl
% move(N,X,Y,Z) - move N disks from peg X to peg Y, with peg Z being the auxiliary peg
move(1,X,Y,_) :-
    write('Move top disk from '), write(X),
    write(' to '), write(Y), nl.
move(N,X,Y,Z) :-
    N>1,
    M is N-1,
    move(M,X,Z,Y),
    move(1,X,Y,_),
    move(M,Z,Y,X).
```