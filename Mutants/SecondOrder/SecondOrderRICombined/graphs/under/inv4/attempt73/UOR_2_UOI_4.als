module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv4[] {
(all a: (one Node),b: (one Node) {
((a in (a.(^adj))) => ((*(a->b)) in adj))
})
}