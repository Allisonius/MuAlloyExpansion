module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv3[] {
(some a,b: (lone Node) {
((a->a) in adj)
})
}