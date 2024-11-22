module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv1[] {
(no n: (one Node) {
(n != (n.adj))
})
}