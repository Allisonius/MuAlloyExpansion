module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv1[] {
(historically ((all v1,v2: (one Node) {
(((v1->v2) in adj) => ((v2->v1) in adj))
}) && (no (adj & adj))))
}