module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv5[] {
(all disj s1,s2: (one State) {
(all e1,e2: (one Event) {
(some n: (one State) {
(((e2->n) in (s2.trans)) => (e1 = e2))
})
})
})
}





