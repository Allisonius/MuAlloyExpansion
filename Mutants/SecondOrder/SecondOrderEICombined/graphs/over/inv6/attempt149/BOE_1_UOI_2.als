module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(all n: (one Node) {
(historically (((n.(^adj)) in Node) || (Node in (n.adj))))
})
}