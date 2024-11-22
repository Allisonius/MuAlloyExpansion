module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv4[] {
(some x: (lone Node) {
((Node - x) in (x.adj))
})
}