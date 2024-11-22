module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv4[] {
(some s: (one State) {
((s in Init) || (some e: (one Event) {
(some ((trans.s).e))
}))
})
}





