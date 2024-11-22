module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
((all n: (one Node) {
(n in (adj.(n.adj)))
}) && ((((Node)) in (((Node)).adj)) => (((Node)) in (((Node)).adj))))
}





