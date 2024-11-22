module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(one n: (one Node) {
(before ((n in (Node.adj)) || (n in (Node.(^adj)))))
})
}