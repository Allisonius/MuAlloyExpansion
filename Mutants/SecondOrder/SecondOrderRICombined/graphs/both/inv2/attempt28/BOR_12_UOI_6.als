module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv2[] {
(all n1: (one Node) {
((n1.adj) in (some (adj.n1)))
})
}