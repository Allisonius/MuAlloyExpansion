module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(all n: (one Node) {
(eventually (((n.adj) in n) && ((some (n.adj)) || (some (n.(~adj))))))
})
}