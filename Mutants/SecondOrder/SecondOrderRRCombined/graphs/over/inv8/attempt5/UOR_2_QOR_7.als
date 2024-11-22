module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv8[] {
(some n: (one Node) {
(((n.adj).adj) = (n.adj))
})
}