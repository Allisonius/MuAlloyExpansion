module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv4[] {
((((State)) in Init) || (some pre: (one State) {
((!(pre in ((State)))) && (pre in ((trans.((State))).Event)))
}))
}





