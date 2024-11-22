module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv7[] {
(all s: (one State) {
((s in (Event.(*({ s1,s2: (one State) {
(some ((s1.trans).s2))
} })))) => (some (Init & (s.(*({ s1,s2: (one State) {
(some ((s1.trans).s2))
} }))))))
})
}





