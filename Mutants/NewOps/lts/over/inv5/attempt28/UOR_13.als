module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv5[] {
(all s,s1: (one State) {
(some ((s.trans) - (s1.trans)))
})
}





