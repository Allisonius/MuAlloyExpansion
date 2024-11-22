module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv4[] {
(some x: (one State) {
(State in (Event.(*(x.trans))))
})
}





