module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv2[] {
(all n1,n2: (one Node) {
((adj in (n1->n2)) => ((n2->n1) in adj))
})
}