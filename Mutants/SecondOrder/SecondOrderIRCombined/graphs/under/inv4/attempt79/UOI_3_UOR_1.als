module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv4[] {
(all n: (one Node),x: (one Node) {
(once ((n in (x.(^adj))) && (x in (n.(^adj)))))
})
}