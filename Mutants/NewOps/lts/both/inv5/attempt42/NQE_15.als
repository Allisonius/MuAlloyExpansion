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
((some (e.(s1.trans))) <=> (some (e.(s2.trans))))
})
})
}





