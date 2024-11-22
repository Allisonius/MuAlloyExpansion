module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv5[] {
(all n1,n2: (one Node) {
(!(historically ((n2 in (n1.adj)) && (n1 = (n2.(^adj))))))
})
}