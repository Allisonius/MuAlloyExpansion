module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv2[] {
(all x,y: (one Node) {
((before (((x->y) in adj) && (adj in (y->x)))) => (y = x))
})
}