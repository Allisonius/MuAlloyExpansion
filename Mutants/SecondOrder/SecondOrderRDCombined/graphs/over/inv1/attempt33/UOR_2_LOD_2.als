module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv1[] {
(all n: (one Node),n2: (one (n.adj)) {
(n in (n2.adj))
})
}