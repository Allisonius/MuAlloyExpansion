module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv2[] {
(all n1: (one Node) {
(some n2: (one Node) {
((n2 in (n1.adj)) => (n1 = (n2.adj)))
})
})
}