module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(all n: (one Node) {
(((n.adj) != n) && (eventually ((some adj) || (some (n.(~adj))))))
})
}