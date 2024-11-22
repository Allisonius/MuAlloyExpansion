module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv4[] {
(some disj n1,n2: (one Node) {
(n2 != (n1.adj))
})
}