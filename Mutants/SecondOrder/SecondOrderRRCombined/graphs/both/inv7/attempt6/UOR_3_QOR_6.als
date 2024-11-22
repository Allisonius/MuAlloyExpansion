module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv7[] {
(one n1: (one Node) {
(n1 in (n1.adj))
})
}