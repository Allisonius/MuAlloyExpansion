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
((Init.(^({ x: (one State),y: (one Event) {
(some ((x.trans).y))
} }))) = State)
}





