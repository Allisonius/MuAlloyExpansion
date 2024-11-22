module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv3[] {
(all s: (one State) {
(all e1,e2: (one Event) {
((((s.trans) in (e1->s)) && ((e2->s) in (s.trans))) => (e1 = e2))
})
})
}





