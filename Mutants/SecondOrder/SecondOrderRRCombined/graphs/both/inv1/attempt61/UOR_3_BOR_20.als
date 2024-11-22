module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv1[] {
(all n1: (one Node) {
(some n2: (one Node) {
((n1 != (n2.adj)) <=> ((n1.adj) in n2))
})
})
}