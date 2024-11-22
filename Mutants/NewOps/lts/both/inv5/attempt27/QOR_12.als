module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv5[] {
(all x: (one State) {
(lone y: (one State) {
(some (x->(Event->y)))
})
})
}





