module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv4[] {
(lone a,b: (one Node) {
((b.(^adj)) in a)
})
}