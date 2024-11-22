module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv7[] {
(lone n: (one Node) {
(((Node - n) in (n.(^adj))) || (Node in (n.(^(~adj)))))
})
}