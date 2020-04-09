bigger(elephant, horse).
bigger(horse, donkey).
bigger(donkey, dog).
bigger(dog, cat).

is_bigger(X, Y):- bigger(X, Y).
is_bigger(X, Z):- bigger(X, Y), is_bigger(Y, Z). %This line outputs both elephant and horse bigger than donkey
is_bigger(X, Z):- is_bigger(Y, Z), bigger(X, Y). %This line outputs only elephant bigger than donkey

