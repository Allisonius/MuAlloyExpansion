module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv1[] {
(all n: (one Node) {
(one m: (one Node) {
((m.adj) !in n)
})
})
}