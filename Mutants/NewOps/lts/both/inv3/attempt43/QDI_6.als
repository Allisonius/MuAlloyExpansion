module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv3[] {
(all s: (State - Init) {
((iden & (Event->Event)) in ((s.trans).(~(s.trans))))
})
}





