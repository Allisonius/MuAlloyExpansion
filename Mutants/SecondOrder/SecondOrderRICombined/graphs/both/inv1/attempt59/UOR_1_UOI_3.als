module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv1[] {
(all n: (one Node) {
((no (n.adj)) || ((n !in (n.(*adj))) && (n in ((n.adj).adj))))
})
}