module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv1[] {
(no n: (one Node) {
((no (n.adj)) || ((n !in (n.adj)) && (n in ((n.adj).adj))))
})
}