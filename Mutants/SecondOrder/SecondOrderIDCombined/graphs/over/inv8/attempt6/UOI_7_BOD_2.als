module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv8[] {
(all e1: (one Node) {
(one (e1.adj))
})
}