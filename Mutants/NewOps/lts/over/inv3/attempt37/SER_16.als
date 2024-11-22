module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv3[] {
(all s: (one State) {
(all e1: (one State) {
((#(e1.(s.trans))) = 1)
})
})
}





