module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv5[] {
(no x,y: (one State) {
(all e: (one Event) {
(((x->(e->y)) in trans) && ((y->(e->y)) in trans))
})
})
}





