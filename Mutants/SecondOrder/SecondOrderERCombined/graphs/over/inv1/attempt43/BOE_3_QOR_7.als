module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
((one v1,v2: (one Node) {
(((v1->v2) in adj) => (adj in (v2->v1)))
}) && (no (adj & adj)))
}