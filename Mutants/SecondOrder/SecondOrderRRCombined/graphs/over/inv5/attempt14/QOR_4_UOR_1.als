module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv5[] {
(no n: (one Node) {
(no (n.adj))
})
}