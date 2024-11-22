module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv7[] {
(one n: (one Node) {
((n->(n.(^adj))) in (Node->Node))
})
}