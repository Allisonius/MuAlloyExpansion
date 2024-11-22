module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv7[] {
(all n1,n2: (one Node) {
(lone (n1.adj))
})
}