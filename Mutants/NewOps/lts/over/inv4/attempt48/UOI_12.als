module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv4[] {
(State in (one ((Event.(Init.trans)) + ((Event.trans).Init))))
}





