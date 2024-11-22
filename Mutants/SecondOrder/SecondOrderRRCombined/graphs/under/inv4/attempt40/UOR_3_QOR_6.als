module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv4[] {
(one n: (one Node) {
((n.adj) = (n.(~adj)))
})
}