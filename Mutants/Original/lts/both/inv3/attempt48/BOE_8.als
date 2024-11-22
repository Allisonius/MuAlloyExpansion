module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv3[] {
(all s: (one State),disj e,e1: (one Event) {
((e = e1) => (((s->e) in (trans.State)) && ((s->e1) in (trans.State))))
})
}





