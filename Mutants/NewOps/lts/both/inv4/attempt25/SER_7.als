module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv4[] {
(all e: (one State) {
(State = (e.(^(Init.trans))))
})
}





