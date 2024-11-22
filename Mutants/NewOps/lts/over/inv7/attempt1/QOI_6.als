module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv7[] {
((one Init) && (no var123456 : State { (Init in (Event.(~(var123456.trans))))}))
}





