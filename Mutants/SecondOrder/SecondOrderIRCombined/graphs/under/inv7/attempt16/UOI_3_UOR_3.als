module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv7[] {
(all n: (one Node) {
(once (((Node - n) in (n.(^adj))) || ((Node - n) in (n.(^(~adj))))))
})
}