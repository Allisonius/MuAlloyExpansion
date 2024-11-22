module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(all n: (one Node) {
(no a: (one (n.adj)) {
(n != (a.adj))
})
})
}