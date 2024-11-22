module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(all n: (one Node) {
((no (n.adj)) || (((n.adj) !in n) && (n != ((n.adj).adj))))
})
}