module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(some n2: (one Node) {
((((Node)) in (n2.adj)) <=> ((((Node)).adj) in n2))
})
}





