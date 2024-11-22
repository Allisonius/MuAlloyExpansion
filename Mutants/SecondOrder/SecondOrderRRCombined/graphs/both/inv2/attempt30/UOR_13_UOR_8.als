module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv2[] {
(!(inv1[]))
}
pred inv1[] {
(all n: (set Node),n2: (some (n.adj)) {
(n in (n2.adj))
})
}