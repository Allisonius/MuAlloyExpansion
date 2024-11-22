module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv5[] {
(one n: (one Node) {
((n.adj) !in n)
})
}