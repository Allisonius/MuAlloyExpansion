module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(some x: (lone Node) {
((x in (x.(^adj))) || (x in (adj.x)))
})
}