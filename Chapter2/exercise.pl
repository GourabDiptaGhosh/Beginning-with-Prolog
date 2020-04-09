%2.1
analyse_list([]):-
  write('This is an empty list.').
analyse_list([Elem | List]):-
  write('This is the head of your list: '),
  write_ln(Elem),
  write('This is the tail of your list: '),
  write(List).

%2.2
check2(Value, Elem):- Value == Elem.
membership(Value, [Elem | List]):-
  check2(Value, Elem); membership(Value, List).

%2.3
remove_duplicates([],[]).
remove_duplicates([Elem | List], FinalList):-
  member(Elem, List),
  remove_duplicates(List, FinalList).
remove_duplicates([Elem | List], [Elem | FinalList]):-
  remove_duplicates(List, FinalList).

%2.4
reverse_list([],[]).
reverse_list([Elem | List], ReversedList):-
  reverse_list(List, ReversedList1),
  append(ReversedList1, [Elem], ReversedList).

%2.5
whoami([]).
whoami([_, _ | Rest]):-
  whoami(Rest).

%2.6
last1([Ans], Ans).
last1([_ | List], Ans):-
  last1(List, Ans).
last2(List, Ans):-
  append(_, [Ans], List).

%2.7
replace([], _, _, []).
replace([Elem | List], X, Y, [Y | NewList]):-
  X == Elem,
  replace(List, X, Y, NewList).
replace([Elem | List], X, Y, [Elem | NewList]):-
  X =\= Elem,
  replace(List, X, Y, NewList).

%2.8
power_set([], [[]]).
power_set( [Elem | List], P) :-
  power_set(List, PS1),
  maplist( append([Elem]), PS1, PS2 ), % i.e. prepend Elem to each PS1
  append(PS1, PS2, P).

%2.9
longer([], _).
longer([_ | First], [_ | Second]):-
  longer(First, Second).

%2.10a
successor([], [x]).
successor([Elem | List], [Elem | Final]):-
  successor(List, Final).

%2.10b
plus([], List, List).
plus(List, [], List).
plus([Elem1 | List1], [Elem2 | List2], [Elem1, Elem2 | Result]):-
  plus(List1, List2, Result).

%2.10c
times([], List, []).
times(List, [], []).
times([Elem | List1], List2, Result):-
  times(List1, List2, Result1),
  append(Result1, List2, Result).





