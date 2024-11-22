module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv4[] {
((Init in (Init.(^(State->State)))) && ((#State) != 1))
}





