module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv7[] {
(all n: (one Node) {
(before (((n - Node) in (n.(^adj))) || ((Node - n) in (n.(^(~adj))))))
})
}