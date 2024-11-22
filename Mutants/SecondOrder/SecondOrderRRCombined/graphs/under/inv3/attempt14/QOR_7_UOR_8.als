module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv3[] {
(some v: (lone Node) {
(no ((v.adj) & v))
})
}