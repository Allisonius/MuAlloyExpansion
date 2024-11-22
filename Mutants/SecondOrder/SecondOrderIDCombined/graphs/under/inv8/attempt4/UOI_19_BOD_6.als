module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv8[] {
(all disj a,b,c: (one Node) {
(((a in b) && (c in (b.adj))) => (c in (lone (a.adj))))
})
}