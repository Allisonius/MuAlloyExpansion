module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv7[] {
(some n: (one Node) {
((Node - n) = ((n.(*adj)) + (n.(^(~adj)))))
})
}