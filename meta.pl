#!/usr/bin/env swipl

% not sure how to retract/1 though

%:- set_prolog_flag(answer_write_options,[max_depth(0)]).
:- set_prolog_flag(double_quotes, chars).
:- dynamic meta/1.

% https://rosettacode.org/wiki/Program_name
% unsolved problem
file_name('meta.pl').

% https://stackoverflow.com/a/4805709
eos([], []).
line([])      --> ("\n"; call(eos)), !.
line([H|T])   --> [H], line(T).
lines([])     --> call(eos), !.
lines([H|T]) --> line(H), lines(T).

file(A) :- true
   , file_name(N)
   , once(phrase_from_file(lines(L), N))
   , flatten(L,F)
   , atom_codes(A,F)
   .

test :- true
   , file(A)
   , file_name(N)
   , open(N,write,S)
   , write(S,A)
   , writeln(S,'%test')
   , forall(meta(X), format(S,'~w.\n', [meta(X)]))
   , close(S)
   .
