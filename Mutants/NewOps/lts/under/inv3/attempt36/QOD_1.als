module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv3[] {
(some s1,s2: (one State) {
((((((State)).trans) = (((Event))->s2)) && ((((State)).trans) = (((Event))->s1))) => (s1 = s2))
})
}





