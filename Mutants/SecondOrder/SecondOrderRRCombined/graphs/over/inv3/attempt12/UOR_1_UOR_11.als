module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv3[] {
(all n: (one Node) {
(lone ((n.adj).(*adj)))
})
}