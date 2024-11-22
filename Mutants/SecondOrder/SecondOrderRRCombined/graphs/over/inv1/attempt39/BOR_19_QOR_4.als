module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(no n: (one Node) {
(lone m: (one Node) {
(((n.adj) != m) => ((m.adj) = n))
})
})
}