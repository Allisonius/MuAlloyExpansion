module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv2[] {
(after ((no n: (one Node),n2: (one (n.adj)) {
(n !in (n2.adj))
}) && (!(inv1[]))))
}
pred inv1[] {
(all n: (one Node),n2: (one (n.adj)) {
(n in (n2.adj))
})
}