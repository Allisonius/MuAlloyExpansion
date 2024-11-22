module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv6[] {
(all n: (one Node) {
(once ((some (Node.adj)) || (some (Node.(~adj)))))
})
}