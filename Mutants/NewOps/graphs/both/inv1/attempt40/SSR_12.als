module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(all n,m: (one Node) {
((some ((n.adj) & m)) => ((m.adj) in n))
})
}





