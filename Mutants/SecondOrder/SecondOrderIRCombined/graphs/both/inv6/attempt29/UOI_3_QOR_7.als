module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(some x: (one Node) {
(once ((x in (Node.(^adj))) || (x in (adj.Node))))
})
}