module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv4[] {
(some s: (one State),s1: (one State),e: (one Event) {
(lone ((s.trans).Event))
})
}





