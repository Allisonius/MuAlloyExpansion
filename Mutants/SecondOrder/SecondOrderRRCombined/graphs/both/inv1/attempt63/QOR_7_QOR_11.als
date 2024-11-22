module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(some n: (one Node) {
(lone ad: (one (n.adj)) {
((#((n->(ad.adj)) + ((ad.adj)->n))) = 2)
})
})
}