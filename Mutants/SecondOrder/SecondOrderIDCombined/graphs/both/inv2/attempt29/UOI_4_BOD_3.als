module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv2[] {
(all n: (one Node),n2: (one (n.adj)) {
(lone (n2.adj))
})
}