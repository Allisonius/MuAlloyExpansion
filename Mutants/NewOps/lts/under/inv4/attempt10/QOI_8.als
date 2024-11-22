module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv4[] {
(some var123456 : State { (var123456 in (Init.(^(((trans.var123456).Event)->var123456))))})
}





