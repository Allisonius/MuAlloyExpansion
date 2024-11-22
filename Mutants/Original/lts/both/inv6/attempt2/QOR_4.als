module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv6[] {
(one e: (one Event) {
(lone (e.(State.trans)))
})
}





