module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(lone n: (one Node) {
(all a: (one (n.adj)) {
(n in (a.(*adj)))
})
})
}