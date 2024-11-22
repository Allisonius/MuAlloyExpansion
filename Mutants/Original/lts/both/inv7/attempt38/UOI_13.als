module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv7[] {
(all s: (one (Event.(State.trans))) {
(Init in (some ((^({ x,y: (one State) {
(some ((x.trans).y))
} })).s)))
})
}





