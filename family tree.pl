season(rain).
weather(wind).
bring(umbrella):- season(rain),weather(wind).
male(kabir).
male(arif).
male(ratul).
male(rion).
female(suma).
female(keya).
parent(kabir, ratul).
parent(kabir,keya).
parent(suma, ratul).
parent(suma,keya).
parent(ratul, arif).
parent(ratul, rion).

father(X,Y):- parent(X,Y), male(X).
mother(X,Y):- parent(X,Y), female(X).
grandparents(X,Y):- parent(X,Z), parent(Z,Y).
grandfather(X,Y):- parent(X,Z), parent(Z,Y), male(X).
grandmother(X,Y):- parent(X,Z),parent(Z,Y), female(X).
sister(X,Y):- parent(Z,X), parent(Z,Y), female(X), X\==Y.
aunty(X,Y):-grandfather(Z,Y), parent(Z,X), female(X).

CountTo10(10):- write(10),nl.
count_to_10(X):-
    write(X),nl,
    Y is X + 1,
    count_to_10(Y).
