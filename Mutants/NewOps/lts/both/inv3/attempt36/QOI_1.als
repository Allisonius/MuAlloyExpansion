module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv3[] {
(all var123456 : Init { ((var123456.(^({ x,y: (one State) {
(some ((x.trans).y))
} }))) = State)})
}





