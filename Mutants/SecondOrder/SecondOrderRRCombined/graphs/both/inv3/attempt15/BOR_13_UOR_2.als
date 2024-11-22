module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv3[] {
(all v1,v2,v3: (one Node) {
((((v1->v2) = adj) && ((v2->v3) in adj)) => (v1 = v3))
})
}