module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv4[] {
(lone disj a,b: (one Node) {
((b.(^adj)) in a)
})
}