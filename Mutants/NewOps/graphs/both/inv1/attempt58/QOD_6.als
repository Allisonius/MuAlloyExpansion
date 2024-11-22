module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(one m: (one Node) {
(((((Node)).adj) = m) <=> ((m.adj) = ((Node))))
})
}





