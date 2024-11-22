module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv4[] {
(lone a: (one Node) {
(once ((a in (a.(^adj))) && (!((a->a) in adj))))
})
}