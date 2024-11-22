module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv4[] {
(all disj a,b: (one Node) {
((b.(^adj)) in a)
})
}