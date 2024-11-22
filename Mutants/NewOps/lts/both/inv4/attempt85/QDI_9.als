module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv4[] {
(all i: (one Init),s: (State & Init),e: (one Event) {
((i->(e->s)) in trans)
})
}





