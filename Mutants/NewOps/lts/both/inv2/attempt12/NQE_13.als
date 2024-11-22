module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv2[] {
(one i: (one Init) {
(all s: (one State) {
(i in s)
})
})
}





