module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv3[] {
((iden & (Event->Event)) in ((((State)).trans).(~(((State)).trans))))
}





