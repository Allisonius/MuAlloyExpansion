module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv1[] {
(some n: (one Node) {
(((n.adj) in Node) => (n in ((n.adj).adj)))
})
}