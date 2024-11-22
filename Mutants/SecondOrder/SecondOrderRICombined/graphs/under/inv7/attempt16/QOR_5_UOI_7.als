module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv7[] {
(lone n: (one Node) {
(((Node - n) in (lone (n.(^adj)))) || ((Node - n) in (n.(^(~adj)))))
})
}