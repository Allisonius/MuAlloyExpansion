module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(some a,b: (one Node) {
(b in (lone ((a.adj) + (adj.a))))
})
}