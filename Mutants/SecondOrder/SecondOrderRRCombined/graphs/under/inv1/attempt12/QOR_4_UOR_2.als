module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv1[] {
(no n: (one Node) {
(some m: (one Node) {
(((n.adj) = m) => ((m.adj) = n))
})
})
}