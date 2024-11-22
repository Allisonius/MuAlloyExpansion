module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv3[] {
(all s: (one Event),disj e,e1: (one Event) {
((((s->e) in (trans.State)) && ((s->e1) in (trans.State))) => (e = e1))
})
}





