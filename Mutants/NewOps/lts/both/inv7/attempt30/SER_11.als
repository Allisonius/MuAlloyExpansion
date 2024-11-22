module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv7[] {
(all s: (one (State.(State.trans))) {
(s in (s.(^({ y,x: (one State) {
(some ((x.trans).y))
} }))))
})
}





