module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(no n1,n2: (one Node) {
(((n2.adj) in n1) <=> ((n1.adj) = n2))
})
}