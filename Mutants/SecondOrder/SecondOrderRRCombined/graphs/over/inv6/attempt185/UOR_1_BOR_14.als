module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv6[] {
(all n: (one Node) {
(((n.adj) !in n) && ((some (n.adj)) || (some (n.(~adj)))))
})
}