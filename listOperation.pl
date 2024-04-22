find(X, [Y|_]) :- X = Y.
find(X, [_|Y]) :- find(X,Y).

size([],0).
size([_|T],N):- size(T,N1), N is N1 + 1.

sum([],0).
sum([H|T], Sum) :- sum(T,Sum1), Sum is Sum1 + H.

max([], -1).
max([H|T], Max) :- max(T,Max1), Max is H :- Max < H.

isSorted([]).
isSorted([_]).
isSorted([X,Y|T]) :- X =< Y, isSorted([Y|T]).

concat([], L, L).
concat([X|Xs], Ys, [X|Zs]) :- concat(Xs, Ys, Zs).
