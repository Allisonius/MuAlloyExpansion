module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv3[] {
(all e: (one Event) {
(one s: (one State) {
(lone ((s.trans).e))
})
})
}





