module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv6[] {
(all n1,n2: (one Node) {
(once ((n2 in ((n1.(^adj)) + (n1.(^(~adj))))) && (n1 != n2)))
})
}