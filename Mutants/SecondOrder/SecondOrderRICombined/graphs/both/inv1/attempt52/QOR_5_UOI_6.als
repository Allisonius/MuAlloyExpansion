module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(lone n: (one Node) {
(after ((n in (Node.adj)) || (n in (Node.(^adj)))))
})
}