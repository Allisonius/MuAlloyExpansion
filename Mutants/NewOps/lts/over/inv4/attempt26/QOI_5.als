module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv4[] {
(all var123456 : State { (some (((Init.trans).(^(Event->var123456))) & iden))})
}





