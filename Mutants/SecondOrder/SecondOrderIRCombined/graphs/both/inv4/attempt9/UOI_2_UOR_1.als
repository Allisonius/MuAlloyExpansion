module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv4[] {
(all a: (one Node) {
(historically ((a in (a.(^adj))) && (!((a->a) in adj))))
})
}