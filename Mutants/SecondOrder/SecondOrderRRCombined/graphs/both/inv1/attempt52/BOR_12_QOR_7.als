module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(some n: (one Node) {
((n = (Node.adj)) || (n in (Node.(^adj))))
})
}