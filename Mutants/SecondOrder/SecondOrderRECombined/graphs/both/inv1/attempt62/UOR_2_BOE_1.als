module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv1[] {
(all n1: (one Node) {
(lone n2: (one Node) {
(((n2.adj) in n1) <=> ((n1.adj) in n2))
})
})
}