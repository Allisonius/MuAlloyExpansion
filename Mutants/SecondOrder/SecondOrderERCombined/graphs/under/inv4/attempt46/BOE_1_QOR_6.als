module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv4[] {
(one disj a,b: (one Node) {
((b.(^adj)) in a)
})
}