module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv4[] {
(some a: (one Node) {
(always ((a in (a.(^adj))) && (!((a->a) in adj))))
})
}