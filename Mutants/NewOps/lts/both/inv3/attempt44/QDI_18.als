module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv3[] {
(all e: (one Event),s: (one State) {
(some s2: (State - Init) {
((e->s2) in (s.trans))
})
})
}





