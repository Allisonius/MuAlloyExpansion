module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv4[] {
(all s: (one State) {
((s in Init) || (Init in (some ((trans.s).Event))) || (some ((trans.s).Event)))
})
}





