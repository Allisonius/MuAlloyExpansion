module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv4[] {
((Init.(*({ s1,s2: (one Init) {
(some ((s1.trans).s2))
} }))) = State)
}





