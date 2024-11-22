module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv2[] {
(all x,y: (one Node) {
((((x->y) != adj) && ((y->x) !in adj)) => (y = x))
})
}