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
(((e1 in (Event.(s.trans))) && (e2 in Event)) => (e1 = e2))
})
})
}





