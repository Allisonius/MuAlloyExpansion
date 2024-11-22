module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(one n1,n2: (one Node) {
(adj in (n1->n2))
})
}