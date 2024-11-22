module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv2[] {
(all n: (one Node) {
((n.adj) !in (n.(~adj)))
})
}