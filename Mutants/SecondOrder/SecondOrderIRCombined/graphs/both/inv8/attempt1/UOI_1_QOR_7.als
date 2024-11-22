module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv8[] {
(some n: (one Node) {
(some (n.(~(^adj))))
})
}