module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv4[] {
(let adj = ({ x,y: (one State) {
(some e: (one Event) {
((x->(e->y)) !in trans)
})
} }) {
(all i: (one Init),s: (one State) {
((i->s) in (*adj))
})
})
}





