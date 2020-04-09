female(mary).
female(sandra).
female(juliet).
female(lisa).
male(peter).
male(paul).
male(dick).
male(bob).
male(harry).
parent(bob, lisa).
parent(bob, paul).
parent(bob, mary).
parent(juliet, lisa).
parent(juliet, paul).
parent(juliet, mary).
parent(peter, harry).
parent(lisa, harry).
parent(mary, dick).
parent(mary, sandra).

father(X,Y):-
  male(X),
  parent(X,Y).

sister(X,Y):-
  parent(Z,X),parent(Z,Y),
  female(X),
  X\=Y.
  

/* THIS CODE DOESN'T WORK, THINK WHY...
brother(X, Y):-
  male(X),
  X \= Y,
  parent(Z, X), parent(Z, Y).*/

brother(X, Y) :-
parent(Z, X), parent(Z, Y),
male(X),
X \= Y.

grandmother(X,Z):-
  female(X),
  parent(X, Y),
  parent(Y, Z).
  
