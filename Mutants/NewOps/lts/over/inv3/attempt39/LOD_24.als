module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv3[] {
(all s: (one State) {
(all disj e1,e2: (one State) {
((e2 in (Event.(s.trans))) => (e1 = e2))
})
})
}





