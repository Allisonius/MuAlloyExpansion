module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv7[] {
(some a,b: (one Node) {
(adj in (a->b))
})
}