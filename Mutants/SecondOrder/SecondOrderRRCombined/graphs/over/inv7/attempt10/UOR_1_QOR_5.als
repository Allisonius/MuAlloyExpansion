module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv7[] {
(lone n1,n2: (one Node) {
(n1 in (n2.adj))
})
}