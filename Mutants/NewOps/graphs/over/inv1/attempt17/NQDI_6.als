module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(all disj a,b: (one Node) {
((b->a) in adj)
})
}





