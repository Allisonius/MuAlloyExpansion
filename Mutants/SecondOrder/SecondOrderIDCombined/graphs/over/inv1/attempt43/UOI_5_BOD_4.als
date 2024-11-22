module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(eventually ((all v1,v2: (one Node) {
((v2->v1) in adj)
}) && (no (adj & adj))))
}