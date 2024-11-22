module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(some n: (some Node) {
(all a: (one (n.adj)) {
((a in (n.adj)) => (n in (a.adj)))
})
})
}