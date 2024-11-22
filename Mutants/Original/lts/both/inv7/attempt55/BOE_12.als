module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv7[] {
(all s1,s2: (one State),e1,e2: (one Event) {
((((s2->(e2->s1)) in trans) => ((s1->(e1->s2)) in trans)) || ((s1->(e2->s1)) in trans))
})
}





