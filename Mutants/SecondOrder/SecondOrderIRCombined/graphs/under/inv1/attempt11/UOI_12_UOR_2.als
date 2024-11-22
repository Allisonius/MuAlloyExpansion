module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv1[] {
(all n: (one Node) {
((n !in (n.adj)) || (n in (some ((n.adj).adj))))
})
}