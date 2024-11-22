module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv1[] {
(no n: (one Node) {
(some m: (one Node) {
(((n.adj) = m) => ((m.adj) = n))
})
})
}