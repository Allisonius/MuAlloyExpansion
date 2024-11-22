module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv1[] {
(no n,m: (one Node) {
(((n.adj).adj) = n)
})
}