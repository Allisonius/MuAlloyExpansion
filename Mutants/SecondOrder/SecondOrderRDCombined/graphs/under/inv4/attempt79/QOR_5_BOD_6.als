module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv4[] {
(lone n: (one Node),x: (one Node) {
((n in (x.(^adj))) && (x in n))
})
}