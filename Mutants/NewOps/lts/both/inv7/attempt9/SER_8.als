module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv7[] {
(all x: (one Init) {
(some ((*(~(trans.x))).Init))
})
}





