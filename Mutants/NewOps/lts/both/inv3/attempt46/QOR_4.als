module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv3[] {
(one s: (one State) {
(all disj e1,e2: (one Event) {
((some (e1.(s.trans))) => (no (e2.(s.trans))))
})
})
}





