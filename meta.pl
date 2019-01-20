#!/usr/bin/env swipl

%:- set_prolog_flag(answer_write_options,[max_depth(0)]).
%:- set_prolog_flag(double_quotes, chars).
:- dynamic meta/1.

% https://rosettacode.org/wiki/Program_name
file_name(F) :- M=user,P=file_name(_),predicate_property(M:P,file(F)).

% https://stackoverflow.com/a/4805709
eos([], []).
line([10])   --> ("\n"; call(eos)), !.
line([H|T])  --> [H], line(T)        .
lines([])    --> call(eos), !        .
lines([H|T]) --> line(H), lines(T)   .

file(A) :- true
	, file_name(N)
	, once(phrase_from_file(lines(L), N))
	, append(A,[_],L)
	, flatten(A,F)
	, atom_codes(A,F)
	.

test :- true
	, file(A)
	, file_name(N)
	, open(N,write,S)
	, write(S,A)
	, forall(meta(X), format(S,'~w. ', [meta(X)]))
	, close(S)
	.
%retract/1
