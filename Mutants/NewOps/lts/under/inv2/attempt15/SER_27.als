module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv2[] {
(all s1,s2: (one State) {
(((s1 in Init) && (s2 in Event)) => (s1 = s2))
})
}





