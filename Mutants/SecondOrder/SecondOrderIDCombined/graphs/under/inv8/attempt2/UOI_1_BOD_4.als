module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv8[] {
(all disj n1,n2: (one Node) {
((lone ((n1.adj).adj)) => (n2 in (n1.adj)))
})
}