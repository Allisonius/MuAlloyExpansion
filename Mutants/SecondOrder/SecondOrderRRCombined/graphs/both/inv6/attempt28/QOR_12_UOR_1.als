module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv6[] {
(all n: (one Node) {
(lone a: (one (n.adj)) {
(n in (a.adj))
})
})
}