module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv4[] {
(one a: (one Node) {
(eventually ((a in (a.(^adj))) && (!((a->a) in adj))))
})
}