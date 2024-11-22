module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv7[] {
(one n: (one Node) {
(before (((Node - n) in (n.(^adj))) || (Node in (n.(^(~adj))))))
})
}