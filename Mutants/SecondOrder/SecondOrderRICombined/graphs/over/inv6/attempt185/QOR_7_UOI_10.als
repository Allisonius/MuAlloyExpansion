module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(some n: (one Node) {
(((n.adj) != n) && (before ((some (n.adj)) || (some (n.(~adj))))))
})
}