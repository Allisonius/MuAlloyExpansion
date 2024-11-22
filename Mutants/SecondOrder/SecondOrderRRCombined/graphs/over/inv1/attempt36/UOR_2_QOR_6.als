module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv1[] {
(one n: (one Node) {
(no m: (one Node) {
(((n.adj) = m) => ((m.adj) = n))
})
})
}