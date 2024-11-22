module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv7[] {
(all s1,s2: (one State),e: (one Event) {
(((s1->(e->s2)) in trans) => (trans in (s2->(e->s1))))
})
}





