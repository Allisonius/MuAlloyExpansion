module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv4[] {
(no a: (one Node),b: (one Node) {
((a in a) => ((a->b) in adj))
})
}