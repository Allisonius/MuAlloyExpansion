module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv5[] {
(some e: (one Event) {
(all x,y,z: (one State) {
(((x->(e->y)) in trans) => ((y->(e->x)) in trans))
})
})
}





