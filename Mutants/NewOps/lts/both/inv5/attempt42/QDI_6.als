module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv5[] {
(all disj s1,s2: (State - Init) {
(some e: (one Event) {
((some (e.(s1.trans))) <=> (some (e.(s2.trans))))
})
})
}





