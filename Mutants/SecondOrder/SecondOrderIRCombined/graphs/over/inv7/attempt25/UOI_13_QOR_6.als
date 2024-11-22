module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv7[] {
(one n: (one Node) {
((some (n.adj)) && (Node in (n.(~(^adj)))))
})
}