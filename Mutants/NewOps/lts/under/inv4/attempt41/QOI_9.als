module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv4[] {
(all var123456 : Init { (State in (((var123456 + (Event.(var123456.trans))) + (Event.((Event.(var123456.trans)).trans))) + (Event.((Event.((Event.(var123456.trans)).trans)).trans))))})
}





