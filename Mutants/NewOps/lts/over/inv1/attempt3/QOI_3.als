module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv1[] {
(all var123456 : Event { (always (State in ((var123456.trans).State)))})
}





