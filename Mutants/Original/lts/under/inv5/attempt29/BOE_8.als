module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv5[] {
(all s: (one State),e: (one Event) {
((Event.(State.trans)) in (e.(s.trans)))
})
}





