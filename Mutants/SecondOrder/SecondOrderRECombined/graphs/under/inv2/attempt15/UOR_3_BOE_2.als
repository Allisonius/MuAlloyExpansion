module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv2[] {
(all n1: (one Node) {
(some n2: (one Node) {
(((n1.adj) in n2) => (n1 !in (n2.adj)))
})
})
}