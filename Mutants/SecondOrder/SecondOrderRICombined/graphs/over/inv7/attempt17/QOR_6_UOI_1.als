module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv7[] {
(one n1,n2: (one Node) {
((n2 + n1) in (lone (n1.(^adj))))
})
}