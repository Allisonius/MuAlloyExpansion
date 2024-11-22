module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv2[] {
(all n1: (one Node),n2: (one Node) {
((n2->n2) !in (*adj))
})
}