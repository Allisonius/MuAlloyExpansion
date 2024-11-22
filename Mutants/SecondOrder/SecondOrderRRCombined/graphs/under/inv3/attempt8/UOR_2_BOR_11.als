module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv3[] {
(all x: (one Node) {
(x = (x.adj))
})
}