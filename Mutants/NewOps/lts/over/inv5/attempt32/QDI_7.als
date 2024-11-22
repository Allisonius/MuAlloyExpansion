module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv5[] {
(all s: (State & Init),e: (one Event) {
((s->(e->s)) in trans)
})
}





