module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(all disj n,n1: (one Node) {
(after ((n in (n1.(^adj))) || (n1 in (n.(^(~adj))))))
})
}