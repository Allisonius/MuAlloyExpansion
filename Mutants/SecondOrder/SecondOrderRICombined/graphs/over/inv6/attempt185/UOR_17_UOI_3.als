module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(all n: (one Node) {
(once (((n.adj) != n) && ((one (n.adj)) || (some (n.(~adj))))))
})
}