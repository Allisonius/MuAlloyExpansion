module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv1[] {
(all s1,s2: (one State) {
(some e: (one Event) {
((trans in (s1->(e->s2))) => (s1 != s2))
})
})
}





