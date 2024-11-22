module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv4[] {
(all x: (one Node) {
((Node - x) in (some (x.adj)))
})
}