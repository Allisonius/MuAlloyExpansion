module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(lone n2: (one Node) {
((((Node)) in (n2.adj)) <=> ((((Node)).adj) in n2))
})
}





