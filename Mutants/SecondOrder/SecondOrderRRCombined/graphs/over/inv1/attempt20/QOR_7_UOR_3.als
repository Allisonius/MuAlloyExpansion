module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv1[] {
(some n1,n2: (one Node) {
((n1->n2) in adj)
})
}