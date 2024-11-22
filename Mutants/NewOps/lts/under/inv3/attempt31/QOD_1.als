module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv3[] {
(some s2: (one State) {
(no (((((State)).trans).s2) - Event))
})
}





