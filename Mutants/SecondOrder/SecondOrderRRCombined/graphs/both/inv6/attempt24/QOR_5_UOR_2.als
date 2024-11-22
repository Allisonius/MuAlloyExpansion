module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv6[] {
(lone x: (one Node) {
((x in (x.(^adj))) || (x in (adj.x)))
})
}