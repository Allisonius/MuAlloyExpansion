module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv4[] {
(all n: (one Node) {
((Node + n) in (n.adj))
})
}