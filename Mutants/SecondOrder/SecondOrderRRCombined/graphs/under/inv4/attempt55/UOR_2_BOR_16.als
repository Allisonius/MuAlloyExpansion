module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv4[] {
(all x: (one Node) {
(((x.adj) - x) = (Node & x))
})
}