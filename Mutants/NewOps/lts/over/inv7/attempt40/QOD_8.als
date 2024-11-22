module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv7[] {
(Init in (((((State)) + (Event.(((State)).trans))) + (Event.((Event.(((State)).trans)).trans))) + (Event.((Event.((Event.(((State)).trans)).trans)).trans))))
}





