module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(no x: (one Node) {
(always ((x in (Node.(^adj))) || (x in (adj.Node))))
})
}