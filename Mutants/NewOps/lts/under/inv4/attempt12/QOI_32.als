module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv4[] {
(all var123456 : Event { (State in (Init.(^(State->(var123456.(State.trans))))))})
}





