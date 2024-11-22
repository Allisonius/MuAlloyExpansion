module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv4[] {
(all n: (one Node) {
((n.adj) in (one (Node - n)))
})
}