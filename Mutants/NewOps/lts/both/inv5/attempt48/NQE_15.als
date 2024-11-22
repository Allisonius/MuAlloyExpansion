module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv5[] {
(some e: (one Event) {
(all disj s1,s2: (one State) {
((one (e.(s1.trans))) => (one (e.(s2.trans))) else (no (e.(s1.trans))))
})
})
}





