module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv3[] {
(all s: (one State) {
(((((State)) in (Event.(s.trans))) && (((State)) in (Event.(s.trans)))) => (((State)) = ((State))))
})
}





