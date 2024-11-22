module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv4[] {
(lone s: (one State) {
(some (((*({ s1,s2: (one State) {
(s1 in (Event.(s2.trans)))
} })).s) & Init))
})
}





