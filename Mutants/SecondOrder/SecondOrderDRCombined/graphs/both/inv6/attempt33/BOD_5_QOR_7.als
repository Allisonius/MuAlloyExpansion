module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(some n: (one Node) {
(all a: (one (n.adj)) {
((a in n) => (n in (a.adj)))
})
})
}