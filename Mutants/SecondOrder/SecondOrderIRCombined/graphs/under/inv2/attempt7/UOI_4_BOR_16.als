module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv2[] {
(all x,y: (one Node) {
((always (((x->y) in adj) && ((y->x) = adj))) => (y = x))
})
}