module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv7[] {
(all e: (one Event),s1,s2: (one State) {
((trans in (s1->(e->s2))) => ((s2->(e->s1)) in trans))
})
}





