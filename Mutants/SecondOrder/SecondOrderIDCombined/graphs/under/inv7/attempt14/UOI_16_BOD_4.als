module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv7[] {
(all disj n1,n2: (one Node) {
((n1 in n2) || (n2 in (one (n1.(^adj)))))
})
}