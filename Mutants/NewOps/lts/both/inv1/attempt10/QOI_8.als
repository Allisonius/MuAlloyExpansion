module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv1[] {
(no var123456 : State { (some ((var123456.trans) & (Event->var123456)))})
}





