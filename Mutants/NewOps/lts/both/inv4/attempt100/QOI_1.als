module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv4[] {
(all var123456 : Init { ((var123456.({ s1: (one State),s2: (one State) {
((s1->(Event->s2)) in trans)
} })) = State)})
}





