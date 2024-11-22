module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv4[] {
(all s: (one State) {
(some (((*({ s1,s2: (one State) {
((Event.(s2.trans)) in s1)
} })).s) & Init))
})
}





