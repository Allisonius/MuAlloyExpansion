module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv3[] {
(all s: (one State) {
(some s1,s2: (one State),e: (one Event) {
((s1 = s2) => (((s.trans) = (e->s2)) && ((s.trans) = (e->s1))))
})
})
}





