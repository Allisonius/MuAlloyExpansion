module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv6[] {
(some n: (one Node) {
((n.(^adj)) in Node)
})
}