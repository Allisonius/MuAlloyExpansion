module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv3[] {
(all s,s1: (one State),e: (one State) {
((s->(e->s1)) in trans)
})
}





