module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv4[] {
(all n: (one Node),x: (one Node) {
(after ((n = (x.(^adj))) && (x in (n.(^adj)))))
})
}