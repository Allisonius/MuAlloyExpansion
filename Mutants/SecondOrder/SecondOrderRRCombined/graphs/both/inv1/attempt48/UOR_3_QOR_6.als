module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv1[] {
(one n: (one Node) {
((n !in (n.adj)) && (n in ((n.adj).adj)))
})
}