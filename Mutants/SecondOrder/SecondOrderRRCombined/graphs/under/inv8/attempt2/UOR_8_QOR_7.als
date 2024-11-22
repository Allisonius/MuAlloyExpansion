module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv8[] {
(some disj n1,n2: (set Node) {
((n2 in ((n1.adj).adj)) => (n2 in (n1.adj)))
})
}