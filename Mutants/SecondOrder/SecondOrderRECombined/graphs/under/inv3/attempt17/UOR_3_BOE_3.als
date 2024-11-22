module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv3[] {
(all x,y: (one Node) {
(((x->y) in adj) => (adj !in (y->x)))
})
}