module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv7[] {
(all n: (one Node) {
(eventually (((Node - n) in (n.(^adj))) || (Node in (lone (n.(^(~adj)))))))
})
}