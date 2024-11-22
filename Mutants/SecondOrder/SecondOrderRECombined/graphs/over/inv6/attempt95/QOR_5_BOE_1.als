module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(lone x: (one Node) {
((((x.adj) + (adj.x)) + x) in Node)
})
}