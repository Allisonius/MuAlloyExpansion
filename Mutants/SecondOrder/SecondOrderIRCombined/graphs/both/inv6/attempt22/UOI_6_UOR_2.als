module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv6[] {
(all n: (one Node) {
(after ((some (n.adj)) || (some (n.(^adj)))))
})
}