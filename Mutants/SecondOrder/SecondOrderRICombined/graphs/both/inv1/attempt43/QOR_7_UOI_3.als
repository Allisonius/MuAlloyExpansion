module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(some n: (one Node) {
(lone m: (one Node) {
((m.(^adj)) = n)
})
})
}