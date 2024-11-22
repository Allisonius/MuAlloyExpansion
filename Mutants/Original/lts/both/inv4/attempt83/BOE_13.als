module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv4[] {
((Init.(^({ s,ns: (one State) {
(trans in (s->(Event->ns)))
} }))) = State)
}





