module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv4[] {
(all s: (State - Init) {
(some i: (one Init) {
(i in ((trans.((trans.s).Event)).Event))
})
})
}





