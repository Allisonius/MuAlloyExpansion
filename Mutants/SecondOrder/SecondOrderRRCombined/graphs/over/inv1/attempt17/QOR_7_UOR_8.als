module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(some a,b: (lone Node) {
((b->a) in adj)
})
}