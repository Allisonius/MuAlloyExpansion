module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(all a,b: (one Node) {
((*(b->a)) in adj)
})
}