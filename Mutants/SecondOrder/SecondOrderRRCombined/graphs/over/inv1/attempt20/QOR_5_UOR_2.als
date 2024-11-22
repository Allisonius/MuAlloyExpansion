module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv1[] {
(lone n1,n2: (one Node) {
((n1->n2) in adj)
})
}