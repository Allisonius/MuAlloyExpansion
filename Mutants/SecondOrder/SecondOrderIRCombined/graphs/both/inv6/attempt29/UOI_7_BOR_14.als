module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(all x: (one Node) {
((x in (lone (Node.(^adj)))) || (x != (adj.Node)))
})
}