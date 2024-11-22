module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(all n: (one Node) {
(all a: (one n) {
((a in (n.adj)) => (n = (a.adj)))
})
})
}