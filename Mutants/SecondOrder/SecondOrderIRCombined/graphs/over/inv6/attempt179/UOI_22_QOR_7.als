module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(some disj n,n1: (one Node) {
((n in (n1.(^adj))) || (n1 in (n.(^(^adj)))))
})
}