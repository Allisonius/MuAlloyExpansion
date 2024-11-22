module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv4[] {
(no n: (one Node) {
((n.adj) in (Node - n))
})
}