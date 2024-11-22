module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv4[] {
(all a: (one Node) {
((adj.a) in a)
})
}