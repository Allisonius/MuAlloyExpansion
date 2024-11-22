module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv4[] {
(all s: (one State) {
(some i: (one Init) {
(s != (Event.(^(i.trans))))
})
})
}





