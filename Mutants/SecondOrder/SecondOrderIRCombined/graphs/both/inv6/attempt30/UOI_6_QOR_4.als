module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(no n: (one Node) {
(after ((some (Node.adj)) || (some (Node.(~adj)))))
})
}