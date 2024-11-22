module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv6[] {
(all disj n,x: (one Node) {
(before ((n in (x.(^adj))) || (x in (n.(^adj)))))
})
}