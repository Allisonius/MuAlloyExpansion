module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv7[] {
(all n1,n2: (one Node) {
(n1 in (one (n1.(^adj))))
})
}