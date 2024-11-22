module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv3[] {
(all s: (State & Init) {
(some e: (one Event) {
(lone (s->e))
})
})
}





