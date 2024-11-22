module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(some n: (set Node) {
((n.(adj + (~adj))) = Node)
})
}