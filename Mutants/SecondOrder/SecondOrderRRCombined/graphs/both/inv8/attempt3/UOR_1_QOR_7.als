module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv8[] {
(some n: (one Node) {
(n in (adj.((n.adj).adj)))
})
}