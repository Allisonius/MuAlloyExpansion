module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv2[] {
(some n1,n2: (one Node) {
((n1 != (n2.adj)) <=> (n2 in (univ - (n1.adj))))
})
}