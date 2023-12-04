
/* Importation des modules */
:- use_module(carnivore).
:- use_module(eye_direction).
:- use_module(equide).
:- use_module(alimentation).
:- use_module(felin).

animal(lion).
animal(leo).
animal(horse).

main:-
    animal(X),
	/* Rules */
    carnivore:is_carnivore(X),
    write(X), write(' is a carnivore.'), nl,
	/* Rules */
    eye_direction:eye_direction(X, Y),
    write(X), write(' has its eyes in the '), write(Y), write('.'), nl,
	/* Rules */
    alimentation:alimentation(X, Z),
    write(X), write(' eats '), write(Z), write('.'), nl,
    fail.
main:-
    animal(X),
	/* Rules */
    equide:is_equide(X),
    write(X), write(' is an equide.'), nl,
	/* Rules */
    eye_direction:eye_direction(X, Y),
    write(X), write(' has its eyes in the '), write(Y), write('.'), nl,
	/* Rules */
    alimentation:alimentation(X, Z),
    write(X), write(' eats '), write(Z), write('.'), nl,
    fail.
main:-
    animal(X),
	/* Rules */
    felin:is_felin(X),
    write(X), write(' is a felin.'), nl,
    fail.
main.
