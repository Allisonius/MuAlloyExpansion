module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv6[] {
(all disj n,n1: (one Node) {
(((n1.(^adj)) in n) || (n1 in (n.(^adj))))
})
}