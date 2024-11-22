module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv2[] {
(!(inv1[]))
}
pred inv1[] {
(lone n: (one Node),n2: (one (n.adj)) {
((n2.adj) in n)
})
}