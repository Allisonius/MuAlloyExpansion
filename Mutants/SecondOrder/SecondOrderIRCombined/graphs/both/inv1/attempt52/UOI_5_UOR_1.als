module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv1[] {
(all n: (one Node) {
(eventually ((n in (Node.adj)) || (n in (Node.(^adj)))))
})
}