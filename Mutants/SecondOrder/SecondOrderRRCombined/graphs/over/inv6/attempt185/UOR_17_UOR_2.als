module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv6[] {
(all n: (one Node) {
(((n.adj) != n) && ((one (n.adj)) || (some (n.(~adj)))))
})
}