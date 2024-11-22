module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(one n: (one Node) {
(Node in (some (n.(^adj))))
})
}