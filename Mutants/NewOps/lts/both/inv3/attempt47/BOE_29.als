module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv3[] {
(all s: (one State),e,e1: (one Event) {
((((s->e) in (trans.State)) && ((trans.State) in (s->e1))) => (e = e1))
})
}





