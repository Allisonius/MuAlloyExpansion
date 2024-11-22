module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv1[] {
(all n: (one Node) {
(always ((n !in (n.adj)) && (n in ((n.adj).adj))))
})
}