module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv4[] {
((Init.(*({ s1,s2: (one State) {
(some e: (one Init) {
((s1->(e->s2)) in trans)
})
} }))) = State)
}





