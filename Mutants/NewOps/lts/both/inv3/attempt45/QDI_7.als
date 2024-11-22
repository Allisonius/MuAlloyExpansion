module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv3[] {
(all s: (State & Init) {
(all disj e1,e2: (one Event) {
((e1.(s.trans)) != (e2.(s.trans)))
})
})
}





