module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv4[] {
((Init.(*({ s1,s2: (one State) {
(no ((s1.trans).s2))
} }))) = State)
}





