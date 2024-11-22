module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv5[] {
(all var123456 : State { (Event in (Event.(var123456.trans)))})
}





