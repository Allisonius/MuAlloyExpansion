module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv2[] {
(lone n1,n2: (one Node) {
(((n2.adj) in n1) <=> (n2 in (univ - (n1.adj))))
})
}