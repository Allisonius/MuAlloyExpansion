module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(one n: (one Node) {
(all a: (one (n.adj)) {
((a.adj) in n)
})
})
}