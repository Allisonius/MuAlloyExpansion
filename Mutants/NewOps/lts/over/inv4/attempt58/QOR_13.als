module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv4[] {
(all s: (one State) {
(lone i: (one Init) {
(i in ((trans.s).Event))
})
})
}





