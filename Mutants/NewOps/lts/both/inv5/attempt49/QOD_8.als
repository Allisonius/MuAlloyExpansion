module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv5[] {
(all e1,e2: (one Event) {
(some n: (one State) {
((((e1->n) in (((State)).trans)) && ((e2->n) in (((State)).trans))) => (e1 = e2))
})
})
}





