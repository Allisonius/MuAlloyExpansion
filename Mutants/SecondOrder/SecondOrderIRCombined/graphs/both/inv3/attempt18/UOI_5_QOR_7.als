module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv3[] {
(some v1,v2,v3: (one Node) {
((eventually (((v1->v2) in adj) && ((v2->v3) in adj))) => (v1 = (v3 & v1)))
})
}