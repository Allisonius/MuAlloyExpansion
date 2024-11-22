module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv4[] {
(all a: (one Node) {
(always ((a in (a.(^adj))) && (!((a->a) = adj))))
})
}