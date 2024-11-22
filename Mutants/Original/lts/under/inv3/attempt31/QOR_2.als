module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv3[] {
(lone s: (one State) {
(some s2: (one State) {
(no (((s.trans).s2) - Event))
})
})
}





