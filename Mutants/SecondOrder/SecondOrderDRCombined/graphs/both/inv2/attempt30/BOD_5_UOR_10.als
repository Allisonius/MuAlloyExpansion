module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv2[] {
(!(inv1[]))
}
pred inv1[] {
(all n: (some Node),n2: (one (n.adj)) {
(n in n2)
})
}