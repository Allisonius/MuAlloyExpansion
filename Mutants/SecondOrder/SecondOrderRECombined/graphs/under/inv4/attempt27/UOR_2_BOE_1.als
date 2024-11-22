module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv4[] {
(all a,b: (one Node) {
((b.(^adj)) in a)
})
}