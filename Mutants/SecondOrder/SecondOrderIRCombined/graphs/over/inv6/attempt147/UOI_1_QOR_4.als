module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(no a,b: (one Node) {
(before ((b in (a.(^adj))) && (a in (b.(^adj)))))
})
}