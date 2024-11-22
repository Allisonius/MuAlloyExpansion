module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv8[] {
(no n: (one Node) {
(((n.adj).adj) = (n.adj))
})
}