module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv4[] {
(lone a: (one Node) {
((a in (a.(^(^adj)))) => (a in (a.(^adj))))
})
}