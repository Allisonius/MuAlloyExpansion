module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(no n: (one Node) {
(before ((no (n.adj)) || (n in ((n.adj).adj))))
})
}