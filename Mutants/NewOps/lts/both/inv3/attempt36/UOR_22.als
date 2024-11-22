module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv3[] {
((Init.(^({ x,y: (one State) {
(no ((x.trans).y))
} }))) = State)
}





