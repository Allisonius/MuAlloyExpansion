module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv4[] {
(all x: (one Node) {
(((x.adj) - x) = (x - Node))
})
}