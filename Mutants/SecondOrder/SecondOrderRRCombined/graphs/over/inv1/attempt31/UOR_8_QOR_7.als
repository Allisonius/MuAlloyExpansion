module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(some n1,n2: (set Node) {
((n1 in (n2.adj)) <=> ((n1.adj) in n2))
})
}