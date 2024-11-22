module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv4[] {
(lone a: (one Node),b: (one Node) {
(((a->b) in adj) => (a in (a.(^adj))))
})
}