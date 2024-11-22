module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv4[] {
(lone n: (one Node) {
(some ((^adj).n))
})
}