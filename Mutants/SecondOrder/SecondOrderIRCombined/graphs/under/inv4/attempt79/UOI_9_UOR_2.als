module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv4[] {
(all n: (one Node),x: (one Node) {
((n in (some (x.(^adj)))) && (x in (n.(^adj))))
})
}