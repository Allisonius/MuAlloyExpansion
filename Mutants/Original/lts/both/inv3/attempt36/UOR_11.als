module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv3[] {
((Init.(^({ x,y: (one State) {
(one ((x.trans).y))
} }))) = State)
}





