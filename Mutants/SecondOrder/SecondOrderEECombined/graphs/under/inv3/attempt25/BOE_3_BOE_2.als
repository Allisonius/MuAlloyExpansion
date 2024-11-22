module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv3[] {
(all v1,v2: (one Node) {
(((adj in (v1->v2)) && (adj in (v2->v1))) => (v1 = (v2 & v1)))
})
}