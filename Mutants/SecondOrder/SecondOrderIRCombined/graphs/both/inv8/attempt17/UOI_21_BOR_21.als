module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv8[] {
(all disj n1,n2,n3: (one Node) {
((((n1 in (n3.adj)) && (n2 in (some (n3.adj)))) => (n1 in (n2.adj))) || (n2 != (n1.adj)))
})
}