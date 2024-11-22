module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv6[] {
(all n1,n2: (one Node) {
(after ((n1 in (adj.n2)) && (n2 in (adj.n1))))
})
}