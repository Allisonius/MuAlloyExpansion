module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(lone n1,n2: (one Node) {
(n2 in ((n1.(^(^adj))) + (n1.(^(~adj)))))
})
}