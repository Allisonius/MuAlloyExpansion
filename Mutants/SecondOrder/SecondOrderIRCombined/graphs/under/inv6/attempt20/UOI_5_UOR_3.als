module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv6[] {
(all n: (one Node) {
((n->(n.(*(^adj)))) in (Node->Node))
})
}