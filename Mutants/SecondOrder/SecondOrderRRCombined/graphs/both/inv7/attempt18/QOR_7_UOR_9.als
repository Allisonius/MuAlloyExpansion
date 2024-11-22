module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv7[] {
(some n: (some Node) {
((Node - n) = ((n.(^adj)) + (n.(^(~adj)))))
})
}