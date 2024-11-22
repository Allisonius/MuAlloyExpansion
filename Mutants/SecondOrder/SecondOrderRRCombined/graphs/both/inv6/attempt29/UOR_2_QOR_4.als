module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv6[] {
(no x: (one Node) {
((x in (Node.(^adj))) || (x in (adj.Node)))
})
}