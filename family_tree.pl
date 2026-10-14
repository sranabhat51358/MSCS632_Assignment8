/*
 * Family Tree Program
 *
 * Facts describe parent-child relationships and each person's gender.
 * Rules infer grandparents, siblings, cousins, and descendants.
 */

% -------------------------
% Basic family relationship facts
% parent(Parent, Child).
% -------------------------

parent(john, david).
parent(mary, david).
parent(john, linda).
parent(mary, linda).

parent(david, kevin).
parent(susan, kevin).
parent(david, emma).
parent(susan, emma).

parent(linda, olivia).
parent(robert, olivia).
parent(linda, noah).
parent(robert, noah).

% -------------------------
% Gender facts
% -------------------------

male(john).
male(david).
male(kevin).
male(robert).
male(noah).

female(mary).
female(linda).
female(susan).
female(emma).
female(olivia).

% -------------------------
% Derived relationship rules
% -------------------------

% X is a grandparent of Y if X is a parent of Z and Z is a parent of Y.
grandparent(X, Y) :-
    parent(X, Z),
    parent(Z, Y).

% X and Y are siblings if they share at least one parent and are different people.
sibling(X, Y) :-
    parent(P, X),
    parent(P, Y),
    X \= Y.

% X and Y are cousins if their parents are siblings and X and Y are different people.
cousin(X, Y) :-
    parent(PX, X),
    parent(PY, Y),
    sibling(PX, PY),
    X \= Y.

% X is a descendant of Y if Y is X's parent, or if Y is an ancestor
% of an intermediate parent Z who is X's parent.
descendant(X, Y) :-
    parent(Y, X).

descendant(X, Y) :-
    parent(Z, X),
    descendant(Z, Y).

% -------------------------
% Example queries
% Run these one at a time at the Prolog prompt (?-).
% -------------------------

% Who are John's children?
% ?- parent(john, Child).
% Expected: Child = david ; Child = linda.

% Who are Kevin's siblings?
% ?- sibling(kevin, Sibling).
% Expected: Sibling = emma.

% Is Kevin a cousin of Olivia?
% ?- cousin(kevin, olivia).
% Expected: true.

% Who are Kevin's grandparents?
% ?- grandparent(Grandparent, kevin).
% Expected: Grandparent = john ; Grandparent = mary.

% Who are all descendants of John?
% ?- descendant(Person, john).
% Expected people: david, linda, kevin, emma, olivia, noah.
% Prolog may return results in a different order depending on the query.
