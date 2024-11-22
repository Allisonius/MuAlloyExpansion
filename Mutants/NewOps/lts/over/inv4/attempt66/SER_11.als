module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv4[] {
((Init.({ s1: (one Event),s2: (one State) {
(some e: (one Event) {
((s1->(e->s2)) in trans)
})
} })) = State)
}





