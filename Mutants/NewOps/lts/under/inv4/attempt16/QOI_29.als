module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv4[] {
(no var123456 : State { ((Init.(*({ s1,s2: (one var123456) {
(some ((s1.trans).s2))
} }))) = var123456)})
}





