% student(Name, Group)
student(alisa, 2).
student(bob, 1).
student(chloe, 2).
student(denise, 1).
student(edward, 2).
% friend(Name, Name)
friend(alisa, bob).
friend(alisa, denise).
friend(bob, chloe).
friend(bob, edward).
friend(chloe, denise).
friend(denise, edward).
% parent(Parent, Child)
parent(marjorie, bart).
parent(marjorie, lisa).
parent(marjorie, maggie).
parent(homer, bart).
parent(homer, lisa).
parent(homer, maggie).
parent(abraham, homer).
parent(mona, homer).
parent(jacqueline, marjorie).
parent(jacqueline, patty).
parent(jacqueline, selma).
parent(clancy, marjorie).
parent(clancy, patty).
parent(clancy, selma).
parent(selma, ling).
% unary(Number)
unary(z).
unary(s(X)) :- unary(X).

% 2 

groupmates(X, Y) :- student(X, N), student(Y, N).

% 3

relative(X, Y) :- ancestor(Z, X), ancestor(Z, Y).

ancestor(X, Y) :- parent(X, Y).
ancestor(X, Y) :- parent(X, Z), ancestor(Z, Y).

% 4 a

add(z, Y, Y).
add(s(X), Y, s(R)) :- add(X, Y, R).

double(X, Y) :- add(X, X, Y).

% 4 b

leq(z, _).
leq(s(X), s(Y)) :- leq(X, Y).

% 4 c

mult(z, _, z).
mult(s(X), Y, Z) :- mult(X,Y,R), add(Y, R, Z).

% 4 d

powerOf2(z, _).
powerOf2(N, M) :- power(s(s(z)), N, M).

power(_, z, s(z)).
power(X, s(Y), Z) :- power(X,Y,R), mult(X, R, Z).












