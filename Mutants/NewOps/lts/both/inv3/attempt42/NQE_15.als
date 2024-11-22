module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv3[] {
(lone e: (one Event) {
(all s: (one State) {
((e->s) in (State.trans))
})
})
}





