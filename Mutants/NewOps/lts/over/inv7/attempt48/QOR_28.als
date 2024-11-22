module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv7[] {
((all s1,s2: (one State),e1,e2: (one Event) {
(((s1->(e1->s2)) in trans) => ((s2->(e2->s1)) in trans))
}) && (one s: (one State),e1,e2: (one Event) {
(((s->(e1->s)) in trans) => ((s->(e2->s)) in trans))
}))
}





