module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv4[] {
(State in (((Init)).(*({ x: (one State),y: (one State) {
((x->(Event->y)) in trans)
} }))))
}





