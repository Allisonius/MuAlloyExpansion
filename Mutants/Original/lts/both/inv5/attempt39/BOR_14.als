module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv5[] {
(all x,y,z: (one State) {
(some e: (one Event) {
(((x->(e->y)) != trans) => ((y->(e->x)) in trans))
})
})
}





