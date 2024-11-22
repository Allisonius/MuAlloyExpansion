module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv4[] {
(one i: (one Init),e: (one Event) {
(State = (e.(^(i.trans))))
})
}





