module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv4[] {
(lone x: (one Node) {
((Node - x) in (x.adj))
})
}