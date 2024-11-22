module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv2[] {
(lone e1: (one Node) {
(no ((Node.adj) & ((*adj).Node)))
})
}