module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(all n: (one Node) {
((some (n.adj)) || ((n !in (n.adj)) && (n in (one ((n.adj).adj)))))
})
}