module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv2[] {
((one State) && (all s: (State - Init) {
(no (s.trans))
}))
}





