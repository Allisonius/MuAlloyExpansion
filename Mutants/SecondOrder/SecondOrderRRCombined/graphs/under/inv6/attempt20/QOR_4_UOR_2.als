module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv6[] {
(no n: (one Node) {
((n->(n.(^adj))) in (Node->Node))
})
}