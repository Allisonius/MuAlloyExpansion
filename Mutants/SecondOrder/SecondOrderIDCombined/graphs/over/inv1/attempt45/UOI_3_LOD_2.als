module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(once (all n: (one Node) {
(n in ((n.adj).adj))
}))
}