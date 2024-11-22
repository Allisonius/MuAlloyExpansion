module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv3[] {
(all e: (one Event),s: (one State) {
(no s1,s2: (one State) {
((((s.trans) = (e->s2)) && ((s.trans) = (e->s1))) => (s1 = s2))
})
})
}





