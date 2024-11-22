module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv4[] {
(one n: (one Node) {
((n.adj) in (Node - n))
})
}