module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(all n: (one Node) {
((one (Node.adj)) && (some (Node.(~adj))))
})
}