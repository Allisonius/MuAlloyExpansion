module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv4[] {
(all s: (one State) {
(s in ((State.(Init.trans)) + (Event.((Event.(Init.trans)).trans))))
})
}





