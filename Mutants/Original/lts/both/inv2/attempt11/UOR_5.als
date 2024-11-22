module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv2[] {
((lone State) && (all s: (one State) {
(no (s.trans))
}))
}





