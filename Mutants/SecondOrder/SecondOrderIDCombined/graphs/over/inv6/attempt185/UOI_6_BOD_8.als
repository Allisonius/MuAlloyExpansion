module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(all n: (one Node) {
(after (((n.adj) != n) && ((some adj) || (some (n.(~adj))))))
})
}