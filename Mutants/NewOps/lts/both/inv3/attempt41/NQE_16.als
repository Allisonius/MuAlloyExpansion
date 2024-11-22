module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv3[] {
(one e: (one Event) {
(all s1,s2: (one State) {
(lone (s1->(e->s2)))
})
})
}





