module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv4[] {
(some n1,n2: (set Node) {
(some (n1->n2))
})
}