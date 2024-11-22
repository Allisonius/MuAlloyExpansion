module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv5[] {
(all disj s1,s2: (one State) {
(some n: (one State) {
(all e1,e2: (one Event) {
((((e1->n) in (s1.trans)) && ((e2->n) in (s2.trans))) => (e1 = e2))
})
})
})
}





