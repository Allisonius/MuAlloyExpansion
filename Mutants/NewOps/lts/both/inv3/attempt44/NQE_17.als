module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv3[] {
(some s2: (one State) {
(all e: (one Event),s: (one State) {
((e->s2) in (s.trans))
})
})
}





