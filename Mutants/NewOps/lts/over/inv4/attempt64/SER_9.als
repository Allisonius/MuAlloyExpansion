module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv4[] {
(all s: (one Event) {
(s in ((Init.(Event.trans)) + (Event.((Event.(Init.trans)).trans))))
})
}





