module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv5[] {
(all disj s1,s2: (one State) {
(some e: (one Event) {
((some (e.(s1.trans))) <=> (some (s2.trans)))
})
})
}





