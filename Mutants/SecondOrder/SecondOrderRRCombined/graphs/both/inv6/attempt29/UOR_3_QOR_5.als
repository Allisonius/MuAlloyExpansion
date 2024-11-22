module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv6[] {
(lone x: (one Node) {
((x in (Node.(^adj))) || (x in (adj.Node)))
})
}