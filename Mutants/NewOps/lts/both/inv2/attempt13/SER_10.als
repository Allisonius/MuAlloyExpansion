module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv2[] {
(one s: (one Event) {
((Event.(s.trans)) in (Event.(State.trans)))
})
}





