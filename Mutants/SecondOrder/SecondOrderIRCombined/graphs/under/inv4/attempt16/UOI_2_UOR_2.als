module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv4[] {
(all a: (one Node) {
(a in (one (a.adj)))
})
}