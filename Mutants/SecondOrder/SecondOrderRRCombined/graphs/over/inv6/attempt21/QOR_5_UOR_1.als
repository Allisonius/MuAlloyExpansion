module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv6[] {
(lone a,b: (one Node) {
((a.(^adj)) = b)
})
}