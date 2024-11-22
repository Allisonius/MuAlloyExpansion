module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(no n1: (one Node) {
(some n2: (one Node) {
((n1 in (n2.adj)) <=> ((n1.(*adj)) in n2))
})
})
}