module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv3[] {
(all s1,s2: (State & Init),e: (one Event) {
(one ((s1.trans).s2))
})
}





