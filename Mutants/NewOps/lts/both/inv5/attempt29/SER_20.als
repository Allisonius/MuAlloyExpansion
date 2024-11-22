module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv5[] {
(all s1,s2: (one State) {
(one ((Init.(s1.trans)) & (Event.(s2.trans))))
})
}





