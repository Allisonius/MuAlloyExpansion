module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv4[] {
(all s: (State & Init) {
(some (((*({ s1,s2: (one State) {
(s1 in (Event.(s2.trans)))
} })).s) & Init))
})
}





