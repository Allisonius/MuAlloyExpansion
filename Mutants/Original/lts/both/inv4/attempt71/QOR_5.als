module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv4[] {
(some s: (one Init) {
(State in (State.(^(s->(Event.(s.trans))))))
})
}





