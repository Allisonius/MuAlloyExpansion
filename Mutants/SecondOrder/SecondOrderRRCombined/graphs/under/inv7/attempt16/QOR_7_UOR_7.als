module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv7[] {
(some n: (set Node) {
(((Node - n) in (n.(^adj))) || ((Node - n) in (n.(^(~adj)))))
})
}