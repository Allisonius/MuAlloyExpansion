module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv3[] {
(one e1: (one Event) {
((#(e1.(State.trans))) < 1)
})
}





