module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv7[] {
(inv4[])
}
pred inv4[] {
(no var123456 : State { ((Init.(^({ x: (one var123456),y: (one var123456) {
(some ((x.trans).y))
} }))) = var123456)})
}





