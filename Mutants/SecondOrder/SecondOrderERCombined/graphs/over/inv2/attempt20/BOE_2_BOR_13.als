module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv2[] {
(all n1,n2: (one Node) {
((n1 != (n2.adj)) <=> ((univ - (n1.adj)) in n2))
})
}