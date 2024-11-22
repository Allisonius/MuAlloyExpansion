module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv1[] {
(all n,m: (one Node) {
((n.(*adj)) = m)
})
}