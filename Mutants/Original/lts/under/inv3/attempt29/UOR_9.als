module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv3[] {
(all s1,s2: (one State) {
(all e: (one Event) {
(no (s1->(e->s2)))
})
})
}





