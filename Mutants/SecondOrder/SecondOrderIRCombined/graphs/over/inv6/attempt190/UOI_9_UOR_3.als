module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv6[] {
(all n: (one Node) {
((once ((Node in (n.(^adj))) && (Node in ((^adj).n)))) || (one Node))
})
}