module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv3[] {
(all disj s,k: (one State) {
(lone ((s.trans).k))
})
}





