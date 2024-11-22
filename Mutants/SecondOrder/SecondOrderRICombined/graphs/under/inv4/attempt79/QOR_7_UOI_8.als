module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv4[] {
(some n: (one Node),x: (one Node) {
((n in (one (x.(^adj)))) && (x in (n.(^adj))))
})
}