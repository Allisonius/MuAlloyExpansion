module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv4[] {
(some a: (one Node),b: (lone Node) {
((a in (a.(^adj))) => ((a->b) in adj))
})
}