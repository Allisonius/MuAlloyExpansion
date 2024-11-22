module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv1[] {
(no s1,s2: (one State) {
(some e: (one Event) {
((s1->(e->s2)) in trans)
})
})
}





