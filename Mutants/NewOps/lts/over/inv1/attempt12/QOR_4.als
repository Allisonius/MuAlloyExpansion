module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv1[] {
(one x: (one State) {
(some ((x.trans).Event))
})
}





