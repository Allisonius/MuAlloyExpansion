module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv7[] {
(all s: (one State) {
((s in (Init.(*({ s1,s2: (one State) {
(some (trans.s2))
} })))) => (some (Init & (s.(*({ s1,s2: (one State) {
(some ((s1.trans).s2))
} }))))))
})
}





