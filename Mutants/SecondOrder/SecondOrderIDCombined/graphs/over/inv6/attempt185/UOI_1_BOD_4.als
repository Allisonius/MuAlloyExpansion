module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(all n: (one Node) {
(before ((n != n) && ((some (n.adj)) || (some (n.(~adj))))))
})
}