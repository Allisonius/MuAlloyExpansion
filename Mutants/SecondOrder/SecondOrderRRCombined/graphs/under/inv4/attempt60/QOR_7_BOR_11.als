module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv4[] {
(some a: (one Node) {
((a = (a.(^adj))) => (a in (a.(^adj))))
})
}