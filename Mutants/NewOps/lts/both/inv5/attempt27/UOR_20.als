module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv5[] {
(all x: (one State) {
(some y: (one State) {
(one (x->(Event->y)))
})
})
}





