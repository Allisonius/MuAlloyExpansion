module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(all disj n,m: (one Node) {
(((n.adj) in m) <=> (n in (some (m.adj))))
})
}