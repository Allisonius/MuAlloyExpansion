module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv1[] {
(all n: (one Node) {
((n in (one (Node.adj))) || (n in (Node.(^adj))))
})
}