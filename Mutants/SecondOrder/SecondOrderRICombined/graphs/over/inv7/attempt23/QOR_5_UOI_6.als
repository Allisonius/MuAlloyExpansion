module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv7[] {
(lone n: (one Node) {
(after ((some (n.adj)) && (Node = (n.(^adj)))))
})
}