module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv4[] {
(no n1,n2: (one Node) {
(one (n1->n2))
})
}