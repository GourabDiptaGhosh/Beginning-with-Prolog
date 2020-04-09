%concat1([1,2,3], [4,5,6], X).
%X=[1,2,3,4,5,6].
concat1([], X, X).
concat1([Elem| List1], X, [Elem| List2]):- 
concat1(List1, X, List2).

%concat2([1,2,3], [4,5,6], X).
%X=[4,5,6,1,2,3]
concat2(X, [], X).
concat2(X,[Elem| List1],[Elem| List2]):-concat2(X,List1,List2).

%interlock([1,2,3], [4,5,6], X).
%X=[4,1,5,2,6,3].
interlock(X, [], X).
interlock([], X, X).
interlock(List1, [Elem| List2], [Elem| List3]):- 
  interlock(List2, List1, List3).
