male(dada). male(boroabbu). male(ashik). male(safkat). male(soyeb). male(hasib). male(ha1).
male(ha2). male(ha3). male(azam). male(nasif). male(muhid). male(rubel). male(husbandbilkis).
male(milon). male(samin). male(tasin). male(nazrul).
female(dida). female(boroammu). female(sima). female(ane). female(farzana).
female(tanzida). female(shamoly). female(rayta). female(rushi). female(bilkis). female(ela).
female(borofupu). female(sahnaz). female(sm1). female(selina). female(sn1). female(sn2).

parent(dada, boroabbu). parent(dada, azam). parent(dada, rubel). parent(dada, bilkis). parent(dada, ela). parent(dada, borofupu).
parent(dida, boroabbu). parent(dida, azam). parent(dida, rubel). parent(dida, bilkis). parent(dida, ela). parent(dida, borofupu).
parent(boroabbu, ashik). parent(boroabbu, hasib). parent(boroammu, ashik). parent(boroammu, hasib).
parent(azam, nasif). parent(azam, tanzida). parent(farzana, nasif). parent(farzana, tanzida).
parent(rubel, rayta). parent(rubel, rushi). parent(shamoly, rayta). parent(shamoly, rushi).
parent(husbandbilkis, sahnaz). parent(husbandbilkis, selina).
parent(bilkis, sahnaz). parent(bilkis, selina).
parent(ashik, safkat). parent(ashik, soyeb). parent(sima, safkat). parent(sima, soyeb).
parent(hasib, ha1). parent(hasib, ha2). parent(hasib, ha3).
parent(ane, ha1). parent(ane, ha2). parent(ane, ha3).
parent(milon, samin). parent(milon, tasin). parent(milon, sm1).
parent(sahnaz, samin). parent(sahnaz, tasin). parent(sahnaz, sm1).
parent(nazrul, sn1). parent(nazrul, sn2). parent(selina, sn1). parent(selina, sn2).


father(X,Y) :- parent(X,Y), male(X). mother(X,Y) :- parent(X,Y), female(X).
grandfather(X,Y) :- parent(X,Z), parent(Z,Y), male(X).
grandmother(X,Y) :- parent(X,Z), parent(Z,Y), female(X).
grandparent(X,Y) :- parent(X,Z),parent(Z,Y).
sister(X,Y) :- parent(Z,X), parent(Z,Y), female(X), X\==Y.
brother(X,Y) :- parent(Z,X), parent(Z,Y), male(X), X\==Y.
brothernsister(X,Y) :- parent(Z,X), parent(Z,Y), X\==Y.
fupu(X,Y) :- grandfather(Z,Y), parent(Z,X), female(X).
cacas(X,Y) :- parent(Z,Y), brother(Z,X), male(X).
uncle(X,Y) :- parent(Z,Y), parent(Q,Z), parent(Q,X), male(X).
aunty(X,Y) :- parent(Z,Y), parent(Q,Z),parent(Q,X), female(X).
%cacatobon(X,Y) :- parent(Z,Y), brother(Z,A), parent(A,X),  female(X).
cacatobon(X,Y) :- cacas(Z,Y), parent(Z,X), female(X).
cacatovai(X,Y) :- cacas(Z,Y), parent(Z,X), male(X).




















