module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv7[] {
(some x: (one Node) {
((x.(^adj)) in Node)
})
}