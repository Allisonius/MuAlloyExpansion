module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(lone a,b: (one Node) {
(((a.(^(*adj))) + (b.(^adj))) = (a + b))
})
}