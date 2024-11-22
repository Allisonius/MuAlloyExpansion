module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(one n: (one Node) {
(all m: (one Node) {
(((m.adj) = m) => ((n.adj) = m))
})
})
}