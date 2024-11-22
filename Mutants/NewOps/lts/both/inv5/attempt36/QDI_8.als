module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv5[] {
(all x,y: (State & Init) {
(some e: (one Event) {
(((x->(e->y)) in trans) => ((y->(e->y)) in trans))
})
})
}





