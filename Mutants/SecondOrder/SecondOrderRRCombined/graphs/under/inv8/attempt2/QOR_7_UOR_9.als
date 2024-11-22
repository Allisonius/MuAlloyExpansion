module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv8[] {
(some disj n1,n2: (some Node) {
((n2 in ((n1.adj).adj)) => (n2 in (n1.adj)))
})
}