module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv3[] {
(no n: (one Node) {
(no (n & (n.(~(*adj)))))
})
}