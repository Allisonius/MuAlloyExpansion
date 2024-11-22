module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(after ((inv1[]) && (all n: (one Node) {
(((n.(^adj)) in Node) || (one Node))
})))
}
pred inv1[] {
(adj in (~adj))
}