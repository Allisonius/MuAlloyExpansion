module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(one x: (one Node) {
((x in (Node.(^adj))) || (x in (adj.Node)))
})
}