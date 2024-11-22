module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(all disj n,n1: (one Node) {
(n in (one (n1.(^adj))))
})
}