module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv6[] {
(all a,b: (one Node) {
(before ((a in (b.(^adj))) || (b in (a.(^adj)))))
})
}