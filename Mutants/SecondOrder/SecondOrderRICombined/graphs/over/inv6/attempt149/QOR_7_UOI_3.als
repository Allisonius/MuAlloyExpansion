module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(some n: (one Node) {
(once ((Node in (n.(^adj))) || (Node in (n.adj))))
})
}