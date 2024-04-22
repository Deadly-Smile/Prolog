male(a).
male(b).
male(c).
male(d).
female(e).
female(f).
female(g).
female(h).

partner(a,e).
partner(b,f).
partner(c,g).

child(a,b).
child(e,b).

child(c,f).
child(g,f).

child(a,d).
child(e,d).
child(b,h).
child(f,h).

sibling(X,Y) :- child(F,X), child(M,X), child(F,Y), child(M,Y).
husbend(X,Y) :- male(X), female(Y), partner(X,Y).
wife(X,Y) :- female(X), male(Y), partner(Y,X).
child(X,Y).

member([1,2,3,4,5,6]).