module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv5[] {
(all s,s1: (State - Init) {
((s.trans) in (s1.trans))
})
}





