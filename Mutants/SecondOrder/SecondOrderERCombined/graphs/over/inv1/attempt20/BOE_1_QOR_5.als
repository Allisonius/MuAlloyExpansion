module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(lone n1,n2: (one Node) {
(adj in (n1->n2))
})
}