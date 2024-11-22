module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(all n: (one Node) {
(historically ((no (n.adj)) || ((n !in (n.adj)) && (((n.adj).adj) in n))))
})
}