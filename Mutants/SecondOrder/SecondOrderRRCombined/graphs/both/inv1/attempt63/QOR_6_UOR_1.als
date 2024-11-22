module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv1[] {
(one n: (one Node) {
(all ad: (one (n.adj)) {
((#((n->(ad.adj)) + ((ad.adj)->n))) = 2)
})
})
}