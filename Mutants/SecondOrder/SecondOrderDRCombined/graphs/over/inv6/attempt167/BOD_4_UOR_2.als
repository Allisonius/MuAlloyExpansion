module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv6[] {
(all disj n,x: (one Node) {
((n in x) || (x in (n.(^adj))))
})
}