module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(no n: (one Node) {
(always ((Node in (n.(^adj))) || (Node in (n.adj))))
})
}