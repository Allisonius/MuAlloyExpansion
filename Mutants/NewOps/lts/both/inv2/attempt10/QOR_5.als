module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv2[] {
(some i: (one Init) {
(i !in (Event.(State.trans)))
})
}





