module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(all n: (one Node) {
(all m: (one Node) {
(((n.(~adj)) in m) <=> ((m.adj) = m))
})
})
}