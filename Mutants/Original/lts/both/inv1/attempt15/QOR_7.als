module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv1[] {
(all s1,s2: (one State) {
(no e: (one Event) {
(((s1->(e->s2)) in trans) => (s1 != s2))
})
})
}





