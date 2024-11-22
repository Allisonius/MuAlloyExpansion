module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv6[] {
(all n: (one Node) {
(once ((some (n.adj)) || (some (n.(~adj)))))
})
}