module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv3[] {
(all s: (one State) {
((iden & (Event->State)) = ((s.trans).(~(s.trans))))
})
}





