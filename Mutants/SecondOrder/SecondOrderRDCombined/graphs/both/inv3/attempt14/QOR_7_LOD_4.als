module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv3[] {
(some x,y,z: (one Node) {
(((z->y) in adj) => (y = z))
})
}