module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(some n: (set Node) {
((no (n.adj)) || ((n !in (n.adj)) && (n in ((n.adj).adj))))
})
}