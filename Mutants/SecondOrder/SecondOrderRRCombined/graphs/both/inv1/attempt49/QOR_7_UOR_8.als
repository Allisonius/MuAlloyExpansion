module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(some n1,n2: (lone Node) {
(((n1.adj) = n2) <=> ((n2.adj) = n1))
})
}