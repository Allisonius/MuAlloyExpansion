module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv4[] {
(one n1,n2: (one Node) {
(some (n1->n2))
})
}