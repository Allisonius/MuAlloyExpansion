module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(all n: (one Node),n2: (one Node) {
(n2 in (lone (n.adj)))
})
}