module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv4[] {
(all i: (one Init) {
(some e: (one State) {
((some Init) && (no (State - (e.(*(i.trans))))))
})
})
}





