module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv7[] {
((((State)) in (Init.(^({ s1,s2: (one State) {
(some ((s1.trans).s2))
} })))) => (Init in (((State)).(^({ s1,s2: (one State) {
(some ((s1.trans).s2))
} })))))
}





