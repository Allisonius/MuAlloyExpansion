module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv8[] {
(one e1: (one Node) {
(e1 in (e1.adj))
})
}