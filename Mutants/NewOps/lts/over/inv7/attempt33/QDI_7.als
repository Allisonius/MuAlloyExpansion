module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv7[] {
(all e: (one Event),s1,s2: (State & Init) {
(some e1: (one Event) {
(((s1->(e->s2)) in trans) => ((s2->(e1->s1)) in trans))
})
})
}





