module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv6[] {
(one a,b: (one Node) {
(((a->b) in adj) => ((b->a) in adj))
})
}