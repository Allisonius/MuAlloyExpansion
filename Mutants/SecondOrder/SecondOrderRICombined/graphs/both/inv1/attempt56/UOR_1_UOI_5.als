module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv1[] {
(all n: (one Node) {
(all m: (one Node) {
(((n.adj) = m) => ((m.(*adj)) = m))
})
})
}