module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv1[] {
(let k = (trans.State) {
(some (iden & (k.(~k))))
})
}





