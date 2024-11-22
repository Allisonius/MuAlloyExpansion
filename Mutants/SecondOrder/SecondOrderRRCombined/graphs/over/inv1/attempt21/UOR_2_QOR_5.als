module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv1[] {
(lone n,m: (one Node) {
(((n.adj).adj) = n)
})
}