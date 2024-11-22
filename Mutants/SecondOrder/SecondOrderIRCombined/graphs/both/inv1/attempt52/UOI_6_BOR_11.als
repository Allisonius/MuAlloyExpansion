module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(all n: (one Node) {
(after ((n != (Node.adj)) || (n in (Node.(^adj)))))
})
}