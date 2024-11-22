module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv3[] {
(lone s1,s2: (one State) {
(lone ((s1.trans).s2))
})
}





