module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv4[] {
(no var123456 : State { (var123456 in (((Init + (Event.(Init.trans))) + (Event.((Event.(Init.trans)).trans))) + (Event.((Event.((Event.(Init.trans)).trans)).trans))))})
}





