module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv5[] {
(all disj s1,s2: (one State) {
(all e: (one Event) {
(some n: (one State) {
(((s1.trans) in (e->n)) => ((e->n) in (s2.trans)))
})
})
})
}





