module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv8[] {
(some n: (lone Node) {
(((n.adj).adj) = (n.adj))
})
}