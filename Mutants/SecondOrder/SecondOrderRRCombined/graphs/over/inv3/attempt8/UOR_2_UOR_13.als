module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv3[] {
(all n: (one Node) {
(some (n.(^adj)))
})
}