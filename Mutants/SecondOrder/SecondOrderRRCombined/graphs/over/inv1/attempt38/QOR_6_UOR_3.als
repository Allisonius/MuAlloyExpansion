module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv1[] {
(one n: (one Node) {
(one m: (one Node) {
(((n.adj) = m) => ((m.adj) = m))
})
})
}