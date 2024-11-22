module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv7[] {
(all n: (one Node) {
(once ((n in (n.(^adj))) || ((Node - n) in (n.(^(~adj))))))
})
}