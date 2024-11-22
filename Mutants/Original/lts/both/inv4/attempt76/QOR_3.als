module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv4[] {
(lone s: (one Init) {
((State->State) in (^(State->(Event.(s.trans)))))
})
}





