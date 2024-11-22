module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv1[] {
(always (all s: (State & Init) {
(some ((s.trans).Event))
}))
}





