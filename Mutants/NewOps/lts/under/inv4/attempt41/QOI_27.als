module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv4[] {
(all var123456 : Event { (State in (((Init + (var123456.(Init.trans))) + (var123456.((var123456.(Init.trans)).trans))) + (var123456.((var123456.((var123456.(Init.trans)).trans)).trans))))})
}





