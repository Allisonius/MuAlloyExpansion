module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv7[] {
(no s: (one (Event.(State.trans))) {
(s in (s.(^({ x,y: (one State) {
(some ((y.trans).x))
} }))))
})
}





