module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv3[] {
(all s: (one Event),e: (one Event) {
((iden & (s->e)) in ((s.trans).(~(s.trans))))
})
}





