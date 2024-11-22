module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv7[] {
(no n: (one Node) {
((some (n.adj)) && (Node in (n.(^adj))))
})
}