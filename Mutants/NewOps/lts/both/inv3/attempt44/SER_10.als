module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv3[] {
(all e: (one Init),s: (one State) {
(some s2: (one State) {
((e->s2) in (s.trans))
})
})
}





