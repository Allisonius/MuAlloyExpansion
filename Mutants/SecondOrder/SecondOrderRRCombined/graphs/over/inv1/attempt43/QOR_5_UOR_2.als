module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv1[] {
((no v1,v2: (one Node) {
(((v1->v2) in adj) => ((v2->v1) in adj))
}) && (no (adj & adj)))
}