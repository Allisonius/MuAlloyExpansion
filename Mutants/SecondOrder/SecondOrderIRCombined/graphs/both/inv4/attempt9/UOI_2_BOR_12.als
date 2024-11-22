module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv4[] {
(all a: (one Node) {
(historically ((a = (a.(^adj))) && (!((a->a) in adj))))
})
}