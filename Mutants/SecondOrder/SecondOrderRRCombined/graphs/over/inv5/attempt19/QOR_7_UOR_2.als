module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv5[] {
(some a: (one Node) {
(a !in (a.(^adj)))
})
}