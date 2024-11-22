module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv4[] {
(lone n: (one Node) {
(n in (n.(~adj)))
})
}