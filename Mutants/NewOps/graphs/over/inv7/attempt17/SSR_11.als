module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv7[] {
(all n1,n2: (one Node) {
(some ((n2 + n1) & (n1.(^adj))))
})
}





