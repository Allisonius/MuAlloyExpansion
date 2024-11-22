module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(all n: (one Node) {
(always ((no (n.adj)) || (some (n.(^adj)))))
})
}