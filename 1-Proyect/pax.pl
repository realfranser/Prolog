:- module(_, _, [assertions, regtypes]).

list_to_matrix([], _, []).
list_to_matrix(List, Size, [Row|Matrix]):-
  list_to_matrix_row(List, Size, Row, Tail),
  list_to_matrix(Tail, Size, Matrix).

list_to_matrix_row(Tail, 0, [], Tail).
list_to_matrix_row([Item|List], s(Size), [Item|Row], Tail):-
  list_to_matrix_row(List, Size, Row, Tail).
