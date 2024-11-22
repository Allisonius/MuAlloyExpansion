module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv4[] {
(lone x: (one Node) {
(((x.adj) - x) = (Node - x))
})
}