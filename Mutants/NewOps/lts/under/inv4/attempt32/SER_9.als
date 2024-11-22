module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv4[] {
(all s: (one Event) {
(some (((*({ s1,s2: (one State) {
(s2 in (Event.(s1.trans)))
} })).s) & Init))
})
}





