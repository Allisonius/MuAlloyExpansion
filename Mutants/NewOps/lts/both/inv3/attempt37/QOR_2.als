module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv3[] {
(no s: (one State) {
(one e: (one Event) {
(lone ((s.trans).e))
})
})
}





