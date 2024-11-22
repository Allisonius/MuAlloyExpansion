module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv2[] {
(all n1: (one Node) {
((n1.adj) != n1)
})
}