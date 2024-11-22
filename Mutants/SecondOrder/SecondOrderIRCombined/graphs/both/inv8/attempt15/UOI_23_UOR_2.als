module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv8[] {
(all disj n1,n2,n3: (one Node) {
(((n1 in (n3.adj)) && (n2 in (n3.adj))) => (eventually ((n1 in (n2.adj)) || (n2 in (n1.adj)))))
})
}