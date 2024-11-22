module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv7[] {
(all n: (one Node) {
(((n.(^adj)) in Node) && (some adj))
})
}