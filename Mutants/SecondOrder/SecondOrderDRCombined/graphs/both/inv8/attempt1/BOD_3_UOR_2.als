module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv8[] {
(all n: (one Node) {
(some (^adj))
})
}