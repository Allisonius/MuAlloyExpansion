module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv2[] {
(no n1,n2: (one Node) {
((n1 in (n2.adj)) <=> ((univ - (n1.adj)) in n2))
})
}