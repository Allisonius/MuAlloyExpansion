module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv4[] {
(lone n1,n2: (one Node) {
(some (n1->n2))
})
}