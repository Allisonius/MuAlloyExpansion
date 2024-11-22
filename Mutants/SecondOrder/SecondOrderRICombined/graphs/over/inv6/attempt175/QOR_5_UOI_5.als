module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(eventually ((inv1[]) && (no n: (one Node) {
((Node in (n.(^adj))) || (one Node))
})))
}
pred inv1[] {
(adj in (~adj))
}