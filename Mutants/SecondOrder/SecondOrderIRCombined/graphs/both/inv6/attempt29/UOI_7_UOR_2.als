module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv6[] {
(all x: (one Node) {
((x in (lone (Node.(^adj)))) || (x in (adj.Node)))
})
}