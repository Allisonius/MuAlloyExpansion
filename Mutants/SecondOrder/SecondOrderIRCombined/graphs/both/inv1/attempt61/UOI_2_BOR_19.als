module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(all n1: (one Node) {
(some n2: (one Node) {
((n1 in (one (n2.adj))) <=> ((n1.adj) = n2))
})
})
}