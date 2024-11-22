module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv3[] {
(all s: (one State) {
(all disj e1,e2: (one Event) {
((e1 in ((s.trans).State)) && (e2 in ((s.trans).State)))
})
})
}





