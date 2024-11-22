module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv5[] {
(all x,y: (one State) {
(all e: (one Event) {
((trans in (x->(e->y))) => ((y->(e->y)) in trans))
})
})
}





