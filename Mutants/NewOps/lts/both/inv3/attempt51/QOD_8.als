module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv3[] {
(some s1,s2: (one State),e: (one Event) {
((((((State)).trans) = (e->s2)) && ((((State)).trans) = (e->s1))) => (s1 = s2))
})
}





