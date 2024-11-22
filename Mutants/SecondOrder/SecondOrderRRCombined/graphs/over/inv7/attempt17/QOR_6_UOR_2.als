module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv7[] {
(one n1,n2: (one Node) {
((n2 + n1) in (n1.(^adj)))
})
}