module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv7[] {
(all n: (one Node) {
((some (n.adj)) && (Node in (n.(*(^adj)))))
})
}