module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv5[] {
(all x: (one Init) {
(some y: (one State) {
(some (x->(Event->y)))
})
})
}





