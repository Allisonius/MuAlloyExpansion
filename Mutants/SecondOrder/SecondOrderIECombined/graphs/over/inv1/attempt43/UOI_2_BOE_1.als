module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(historically ((all v1,v2: (one Node) {
((adj in (v1->v2)) => ((v2->v1) in adj))
}) && (no (adj & adj))))
}