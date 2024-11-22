module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv6[] {
(no a,b: (one Node) {
((a->b) in adj)
})
}