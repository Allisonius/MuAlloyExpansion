module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv5[] {
(all s,s1: (one State),e: (one Event) {
(some s2,s3: (State & Init) {
(((s->(e->s2)) in trans) => ((s1->(e->s3)) in trans))
})
})
}





