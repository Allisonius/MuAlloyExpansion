module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv4[] {
(some u: (one Init) {
(State in (u.(*({ x: (one Event),y: (one State) {
(some e: (one Event) {
((x->(e->y)) in trans)
})
} }))))
})
}





