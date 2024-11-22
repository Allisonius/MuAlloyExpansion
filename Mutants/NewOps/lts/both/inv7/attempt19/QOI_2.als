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
(some var123456 : Init { ((var123456.(^({ x: (one State),y: (one State) {
(some ((x.trans).y))
} }))) = State)})
}





