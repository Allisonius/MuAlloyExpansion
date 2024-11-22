module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv3[] {
(no s: (one State),e,e1: (one Event) {
((((s->e) in (trans.State)) && ((s->e1) in (trans.State))) => (e = e1))
})
}





