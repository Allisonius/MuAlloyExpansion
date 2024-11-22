module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(some n: (lone Node) {
(n in (n.(~adj)))
})
}