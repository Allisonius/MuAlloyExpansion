module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(some n: (some Node) {
(((n.adj) in Node) => (n in ((n.adj).adj)))
})
}