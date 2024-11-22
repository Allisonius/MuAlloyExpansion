module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv1[] {
(all n: (one Node),n2: (one Node) {
((n2 in (one (n.adj))) => (!(n2 in (n.adj))))
})
}