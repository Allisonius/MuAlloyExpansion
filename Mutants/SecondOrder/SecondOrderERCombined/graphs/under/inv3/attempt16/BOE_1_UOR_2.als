module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv3[] {
(no n: (one Node) {
((n.(^adj)) in Node)
})
}