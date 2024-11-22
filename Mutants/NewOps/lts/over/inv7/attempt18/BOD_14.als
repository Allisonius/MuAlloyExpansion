module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv7[] {
(all e: (one Event),s1,s2: (one State) {
((s2->(e->s1)) in trans)
})
}





