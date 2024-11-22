module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(all n: (one Node) {
((n in (some (n.adj))) && (n in ((n.adj).adj)))
})
}