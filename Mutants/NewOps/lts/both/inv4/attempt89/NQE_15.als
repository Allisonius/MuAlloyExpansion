module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv4[] {
(some e: (one Event) {
(all i: (one Init) {
(State in (e.(^(i.trans))))
})
})
}





