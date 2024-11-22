module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv6[] {
(all n: (one Node) {
(once ((Node in (n.(^adj))) || (Node in (n.adj))))
})
}