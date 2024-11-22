module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv4[] {
(all a: (one Node),b: (one Node) {
((a in a) => ((a->b) in adj))
})
}