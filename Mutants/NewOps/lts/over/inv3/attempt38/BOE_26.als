module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv3[] {
(all e: (one Event),s: (one State) {
(one s2: (one State) {
((s.trans) in (e->s2))
})
})
}





