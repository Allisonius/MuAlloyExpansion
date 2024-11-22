module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv3[] {
(all x,y,z: (one Node) {
(((z->y) in adj) => (historically ((y = z) && (z = x))))
})
}