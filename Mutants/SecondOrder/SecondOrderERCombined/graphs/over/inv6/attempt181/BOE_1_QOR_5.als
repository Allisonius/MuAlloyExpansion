module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(lone n: (one Node) {
((((n.(^adj)) in Node) && (inv1[])) || (one Node))
})
}
pred inv1[] {
(adj in (~adj))
}