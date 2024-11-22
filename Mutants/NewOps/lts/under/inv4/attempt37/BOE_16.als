module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv4[] {
(all s: (one State) {
((Init in s) || (some pre: (one State) {
((!(pre in s)) && (pre in ((trans.s).Event)))
}))
})
}





