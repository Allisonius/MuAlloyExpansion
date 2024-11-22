module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv5[] {
(some x,y: (one State) {
(all e: (one Event) {
((some (x->(e->y))) => (some (y->(e->y))))
})
})
}





