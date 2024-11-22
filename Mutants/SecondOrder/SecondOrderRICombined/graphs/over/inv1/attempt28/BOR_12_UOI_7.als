module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(all n: (one Node) {
(((n.adj) = Node) => (((n.adj).(~adj)) = n))
})
}