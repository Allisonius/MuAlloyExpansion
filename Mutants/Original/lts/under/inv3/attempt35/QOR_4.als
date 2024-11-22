module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv3[] {
(some s: (one State),disj e,e1: (one Event) {
((((s->e) in (State.trans)) && ((s->e1) in (State.trans))) => (e = e1))
})
}





