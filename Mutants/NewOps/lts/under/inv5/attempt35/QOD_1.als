module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv5[] {
(all e: (one Event) {
(some n: (one State) {
((((e->n) in (((State)).trans)) && ((e->n) in (((State)).trans))) => (e = e))
})
})
}





