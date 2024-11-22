module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(no n: (one Node) {
(all ad: (one (n.adj)) {
((#((~(n->(ad.adj))) + ((ad.adj)->n))) = 2)
})
})
}