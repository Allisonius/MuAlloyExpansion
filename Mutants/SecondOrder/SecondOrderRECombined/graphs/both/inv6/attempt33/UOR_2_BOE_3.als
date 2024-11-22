module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv6[] {
(all n: (one Node) {
(all a: (one (n.adj)) {
((a in (n.adj)) => ((a.adj) in n))
})
})
}