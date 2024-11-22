module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv5[] {
(no var123456 : State { (Event = ((var123456.trans).var123456))})
}





