module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv3[] {
(all x,y,z: (one Node) {
((after (((x->y) in adj) && ((z->y) in adj))) => (y = z))
})
}