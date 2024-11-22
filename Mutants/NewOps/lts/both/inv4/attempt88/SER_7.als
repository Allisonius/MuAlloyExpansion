module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv4[] {
((Event.(^({ s1,s2: (one State) {
((s1->(Event->s2)) in trans)
} }))) = State)
}





