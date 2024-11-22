module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv2[] {
(!(inv1[]))
}
pred inv1[] {
(all n: (lone Node),n2: (one (n.adj)) {
(n = (n2.adj))
})
}