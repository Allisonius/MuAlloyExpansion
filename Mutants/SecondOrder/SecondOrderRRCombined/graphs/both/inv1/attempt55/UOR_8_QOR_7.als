module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(some disj n1,n2: (set Node) {
(((n1.adj) = n2) <=> ((n2.adj) = n1))
})
}