module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv2[] {
(lone n1,n2: (one Node) {
((n1 in (n2.adj)) <=> (n2 in (univ - (n1.adj))))
})
}