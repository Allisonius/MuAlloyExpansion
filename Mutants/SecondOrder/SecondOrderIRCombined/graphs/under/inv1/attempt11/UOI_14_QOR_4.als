module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(no n: (one Node) {
((n !in (n.adj)) || (n in ((n.(*adj)).adj)))
})
}