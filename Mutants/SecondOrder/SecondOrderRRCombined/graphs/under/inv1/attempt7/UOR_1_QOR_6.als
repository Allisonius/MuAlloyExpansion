module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv1[] {
(one n: (one Node) {
((n.adj) in Node)
})
}