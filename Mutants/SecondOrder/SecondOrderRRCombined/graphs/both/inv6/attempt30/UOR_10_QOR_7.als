module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(some n: (some Node) {
((some (Node.adj)) || (some (Node.(~adj))))
})
}