module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(some a,b: (one Node) {
(before ((a in (b.(^adj))) || (b in (a.(^adj)))))
})
}