module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv1[] {
(lone x: (one State) {
(some ((x.trans).Event))
})
}





