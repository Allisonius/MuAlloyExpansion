module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv3[] {
(all x,y,z: (one Node) {
((once (((x->y) in adj) && ((z->y) in adj))) => (y = z))
})
}