module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv6[] {
(all disj n,x: (one Node) {
(once ((n in (x.(^adj))) || (x in (n.(^adj)))))
})
}