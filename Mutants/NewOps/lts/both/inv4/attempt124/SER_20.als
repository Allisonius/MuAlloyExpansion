module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv4[] {
(all i: (one Init) {
((i.(^({ s1,s2: (one Event) {
(some e: (one Event) {
((s1->(e->s2)) in trans)
})
} }))) = State)
})
}





