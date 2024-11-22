module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(one n: (one Node) {
(((n.adj) in Node) && (n in (some ((n.adj).adj))))
})
}