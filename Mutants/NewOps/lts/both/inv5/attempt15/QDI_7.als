module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv5[] {
(all s: (State & Init) {
(some (Event.(s.trans)))
})
}





