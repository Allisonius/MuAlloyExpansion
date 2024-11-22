module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv2[] {
(all x,y: (one Node) {
((once (((x->y) in adj) && ((y->x) in adj))) => (y = x))
})
}