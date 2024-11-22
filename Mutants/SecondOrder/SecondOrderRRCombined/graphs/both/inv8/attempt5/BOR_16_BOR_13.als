module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv8[] {
(all n1,n2: (one Node) {
((n2 != (n1.adj)) => (n1 != (n2.(*adj))))
})
}