/* Facts */
felin(tigre).
felin(lion).
felin(panthere).

equide(cheval).
equide(ane).

/* Rules */
non_felin(X) :- \+ felin(X).
