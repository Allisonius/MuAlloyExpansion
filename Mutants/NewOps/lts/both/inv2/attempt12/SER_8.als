module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv2[] {
(all s: (one Init) {
(one i: (one Init) {
(i in s)
})
})
}





