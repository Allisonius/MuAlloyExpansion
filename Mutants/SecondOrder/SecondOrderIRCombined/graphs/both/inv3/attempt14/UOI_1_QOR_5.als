module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv3[] {
(lone x,y,z: (one Node) {
((before (((x->y) in adj) && ((z->y) in adj))) => (y = z))
})
}