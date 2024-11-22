module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv5[] {
(all s1,s2: (one State),e: (one State) {
(((s1->(e->s2)) in trans) && ((s1->(e->s1)) in trans))
})
}





