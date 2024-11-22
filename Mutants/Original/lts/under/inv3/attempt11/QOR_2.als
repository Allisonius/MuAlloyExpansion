module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv3[] {
(lone s: (one State) {
(((s.trans).State) in Event)
})
}





