module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv4[] {
((State in (Init.(^(State->State)))) && (all var123456 : State { ((#var123456) != 1)}))
}





