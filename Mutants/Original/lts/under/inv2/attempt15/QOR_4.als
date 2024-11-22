module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv2[] {
(one s1,s2: (one State) {
(((s1 in Init) && (s2 in Init)) => (s1 = s2))
})
}





