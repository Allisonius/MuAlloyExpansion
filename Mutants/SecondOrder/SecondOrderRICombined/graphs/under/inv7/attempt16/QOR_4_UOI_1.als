module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv7[] {
(no n: (one Node) {
(before (((Node - n) in (n.(^adj))) || ((Node - n) in (n.(^(~adj))))))
})
}