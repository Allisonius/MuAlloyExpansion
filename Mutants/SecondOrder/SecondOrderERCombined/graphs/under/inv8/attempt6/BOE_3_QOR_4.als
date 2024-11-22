module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv8[] {
(no n1: (one Node) {
(some n2: (one Node) {
((n2 in (n1.adj)) => ((n2.adj) in n1))
})
})
}