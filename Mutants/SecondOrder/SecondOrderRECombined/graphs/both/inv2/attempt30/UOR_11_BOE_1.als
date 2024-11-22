module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv2[] {
(!(inv1[]))
}
pred inv1[] {
(all n: (one Node),n2: (set (n.adj)) {
((n2.adj) in n)
})
}