module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv6[] {
(lone s: (one State) {
(some ((s.trans).State))
})
}





