module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv3[] {
(one s: (one State),e: (one Event) {
(lone ((s->e) & (State.trans)))
})
}





