module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv7[] {
(all s: (one State),e1,e2: (one Event) {
(((s->(e1->s)) in trans) => ((s->(e1->s)) in trans))
})
}





