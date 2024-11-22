module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv7[] {
(all s: (one (Event.(State.trans))) {
(State in ((^({ x,y: (one State) {
(lone ((x.trans).y))
} })).s))
})
}





