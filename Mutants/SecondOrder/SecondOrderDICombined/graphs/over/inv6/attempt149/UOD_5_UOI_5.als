module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(all n: (one Node) {
(eventually ((Node in (n.adj)) || (Node in (n.adj))))
})
}