module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv7[] {
(one n1,n2: (one Node) {
(n1 in (n2.(^(^adj))))
})
}