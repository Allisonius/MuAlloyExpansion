module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv7[] {
(lone n: (one Node) {
(before ((some (n.adj)) && (Node in (n.(^adj)))))
})
}