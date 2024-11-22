module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv3[] {
(all var123456 : State { ((Init.(^({ x,y: (one var123456) {
(some ((x.trans).y))
} }))) = var123456)})
}





