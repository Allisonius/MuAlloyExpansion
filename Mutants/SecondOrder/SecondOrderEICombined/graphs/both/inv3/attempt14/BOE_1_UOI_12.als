module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv3[] {
(all x,y,z: (one Node) {
((y = z) => (((x->y) in (^adj)) && ((z->y) in adj)))
})
}