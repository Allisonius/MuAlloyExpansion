module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv2[] {
((all var123456 : State { (one var123456)}) && (no trans))
}





