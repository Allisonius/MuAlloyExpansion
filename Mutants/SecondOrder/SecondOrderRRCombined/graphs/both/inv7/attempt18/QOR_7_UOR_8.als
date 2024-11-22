module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv7[] {
(some n: (lone Node) {
((Node - n) = ((n.(^adj)) + (n.(^(~adj)))))
})
}