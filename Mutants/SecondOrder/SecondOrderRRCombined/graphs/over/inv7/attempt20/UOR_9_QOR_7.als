module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv7[] {
(some n: (lone Node) {
((some adj) && (Node = (n.(^adj))))
})
}