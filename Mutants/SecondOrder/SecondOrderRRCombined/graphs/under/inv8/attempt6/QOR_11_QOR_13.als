module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv8[] {
(all n1: (one Node) {
(one n2: (one Node) {
((n2 in (n1.adj)) => (n1 in (n2.adj)))
})
})
}