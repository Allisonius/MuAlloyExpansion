module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv8[] {
(all disj a,b,c: (one Node) {
(c in (a.adj))
})
}