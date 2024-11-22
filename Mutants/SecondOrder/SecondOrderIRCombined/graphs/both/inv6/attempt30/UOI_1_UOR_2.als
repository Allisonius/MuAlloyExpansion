module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv6[] {
(all n: (one Node) {
(before ((some (Node.adj)) || (some (Node.(~adj)))))
})
}