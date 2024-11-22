module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv4[] {
(some var123456 : Event { ((Init.(^({ s,ns: (one State) {
((s->(var123456->ns)) in trans)
} }))) = State)})
}





