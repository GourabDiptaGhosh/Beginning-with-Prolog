%reverse a list
rev([], []).
%rev([Elem| List1], [List2, Elem]):- rev(List1, List2). %My first failed try :-P

rev([Elem| List1], Final):-
  rev(List1,Final1),
  append(Final1, [Elem], Final).
