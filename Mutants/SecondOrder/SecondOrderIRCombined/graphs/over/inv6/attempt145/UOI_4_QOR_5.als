module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(lone a,b: (one Node) {
(always ((a in (b.(^adj))) || (b in (a.(^adj)))))
})
}