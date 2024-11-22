module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(no n: (one Node) {
(all a: (one (n.adj)) {
((a in (n.adj)) => (n != (a.adj)))
})
})
}