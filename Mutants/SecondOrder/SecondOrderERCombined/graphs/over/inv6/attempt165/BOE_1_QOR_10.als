module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
((some adj) && (one n: (one Node) {
((n.(^(adj + (~adj)))) in Node)
}))
}