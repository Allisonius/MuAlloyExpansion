module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv4[] {
(all n: (one Node),x: (one Node) {
((n in (x.(*(^adj)))) && (x in (n.(^adj))))
})
}