module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(some n: (lone Node) {
(((*adj).n) = Node)
})
}