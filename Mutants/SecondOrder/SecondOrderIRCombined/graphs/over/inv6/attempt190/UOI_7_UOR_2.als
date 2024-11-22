module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv6[] {
(all n: (one Node) {
((before ((Node in (n.(^adj))) && (Node in ((^adj).n)))) || (one Node))
})
}