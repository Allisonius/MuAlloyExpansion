module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv4[] {
(all n1,n2: (one Node) {
(one (n1->n2))
})
}