module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv5[] {
(lone disj s1,s2: (one State) {
(some e: (one Event) {
((one (e.(s1.trans))) <=> (one (e.(s2.trans))))
})
})
}





