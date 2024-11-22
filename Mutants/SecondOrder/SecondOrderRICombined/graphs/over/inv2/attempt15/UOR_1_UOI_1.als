module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv2[] {
(all e1: (one Node) {
(no ((Node.(~adj)) & (adj.Node)))
})
}