module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(some n2: (one Node) {
(all n1: (one Node) {
((n1 in (n2.adj)) <=> ((n1.adj) in n2))
})
})
}





