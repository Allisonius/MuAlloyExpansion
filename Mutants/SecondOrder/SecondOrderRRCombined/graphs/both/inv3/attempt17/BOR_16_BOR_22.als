module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv3[] {
(all v1,v2,v3: (one Node) {
((((v1->v2) in adj) && ((v2->v3) = adj)) => (v1 = (v3 - v3)))
})
}