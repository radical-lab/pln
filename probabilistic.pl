#!/usr/bin/env swipl
prob(P) :- random_between(0,100,X), X =< P.
