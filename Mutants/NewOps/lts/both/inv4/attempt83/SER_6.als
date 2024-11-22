module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv4[] {
((State.(^({ s,ns: (one State) {
((s->(Event->ns)) in trans)
} }))) = State)
}





