module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv6[] {
(lone n: (one Node) {
(all a: (one (n.adj)) {
((a in (n.adj)) => (n in (a.adj)))
})
})
}