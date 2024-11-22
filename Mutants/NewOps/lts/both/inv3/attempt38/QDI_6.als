module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv3[] {
(all s: (State - Init) {
(one e: (one Event) {
((e->s) in (s.trans))
})
})
}





